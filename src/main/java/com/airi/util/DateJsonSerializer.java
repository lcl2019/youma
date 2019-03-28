package com.airi.util;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;


import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
/** 
 * Desc:自定义日期类型序列化类 
 *  
 * @author zhangwei<wei.zw@corp.netease.com> 
 * @since 2015年9月18日 下午4:12:51 
 * @version v 0.1 
 */  
public class DateJsonSerializer extends JsonSerializer<Date>{

	@Override
	public void serialize(Date date, JsonGenerator jsonGenerator, SerializerProvider arg2)
			throws IOException, JsonProcessingException {
		
		ObjectMapper objectMapper=new ObjectMapper();
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		objectMapper.writeValue(jsonGenerator, dateFormat.format(date));
		
	}

}
