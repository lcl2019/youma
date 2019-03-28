package com.airi.constant;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

public class EnumKeyTypeHandler extends BaseTypeHandler<Enum> {

	private Class<Enum> type;
	private final Enum[] enums;

	/**
	 * ���������ļ����õ�ת�����Լ�ö�������ݣ���������������ݸ�Ч��ʵ��
	 * 
	 * @param type
	 *            �����ļ������õ�ת����
	 */
	public EnumKeyTypeHandler(Class<Enum> type) {
		if (type == null)
			throw new IllegalArgumentException("Type argument cannot be null");
		this.type = type;
		this.enums = type.getEnumConstants();
		if (this.enums == null)
			throw new IllegalArgumentException(type.getSimpleName() + " does not represent an enum type.");
	}

	@Override
	public Enum getNullableResult(ResultSet rs, String columnName) throws SQLException {
		// �������ݿ�洢���;�����ȡ���ͣ������������ݿ��д��INT����
		int i = rs.getInt(columnName);

		if (rs.wasNull()) {
			return null;
		} else {
			// �������ݿ��е�codeֵ����λIEnum����
			return locateIEnum(i);
		}
	}

	@Override
	public Enum getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
		// �������ݿ�洢���;�����ȡ���ͣ������������ݿ��д��INT����
		int i = rs.getInt(columnIndex);
		if (rs.wasNull()) {
			return null;
		} else {
			// �������ݿ��е�codeֵ����λIEnum����
			return locateIEnum(i);
		}
	}

	public Enum getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
		// �������ݿ�洢���;�����ȡ���ͣ������������ݿ��д��INT����
		int i = cs.getInt(columnIndex);
		if (cs.wasNull()) {
			return null;
		} else {
			// �������ݿ��е�codeֵ����λIEnum����
			return locateIEnum(i);
		}
	}

	public void setNonNullParameter(PreparedStatement ps, int i, Enum parameter, JdbcType jdbcType)
			throws SQLException {
		// baseTypeHandler�Ѿ�����������parameter��null�ж�
		ps.setInt(i, parameter.getKey());

	}

	/**
	 * ö������ת�������ڹ��캯����ȡ��ö�ٵ�����enums���ñ������Ӹ�Ч���
	 * 
	 * @param key
	 *            ���ݿ��д洢���Զ���code����
	 * @return code��Ӧ��ö����
	 */
	private Enum locateIEnum(int key) {
		for (Enum status : enums) {
			if (status.getKey() == key) {
				return status;
			}
		}
		throw new IllegalArgumentException("δ֪��ö�����ͣ�" + key + ",��˶�" + type.getSimpleName());
	}

}
