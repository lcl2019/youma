package com.airi.mapper;

import java.util.List;
import java.util.Map;

import com.airi.model.DataDictionary;

public interface DataDictionaryMapper {
	
	public int addDataDict(DataDictionary dictionary);
	
	public List<DataDictionary> findDataDictList(Map<String, Object> map);
	
	public DataDictionary findDataDict(Long id);
	
	public int updateDataDict(DataDictionary dictionary);
	
	public int findDataDictionaryCount(Map<String, Object> map);

}
