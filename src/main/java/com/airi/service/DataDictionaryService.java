package com.airi.service;

import java.util.List;

import com.airi.model.DataDictionary;
import com.airi.util.Condition;
import com.airi.util.Paging;

public interface DataDictionaryService {
	
	
	public int addDataDict(DataDictionary dictionary);
	
	public Paging<DataDictionary> findDataDictList(Condition condition);
	
	public DataDictionary findDataDict(Long id);
	
	public int updateDataDict(DataDictionary dictionary);


}
