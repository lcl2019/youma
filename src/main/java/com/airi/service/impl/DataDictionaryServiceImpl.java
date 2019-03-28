package com.airi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airi.mapper.DataDictionaryMapper;
import com.airi.model.DataDictionary;
import com.airi.service.DataDictionaryService;
import com.airi.util.Condition;
import com.airi.util.Paging;

@Service
public class DataDictionaryServiceImpl implements DataDictionaryService{
    
	@Autowired
	private DataDictionaryMapper dictionaryMapper;
	public int addDataDict(DataDictionary dictionary) {
		int count=dictionaryMapper.addDataDict(dictionary);
		return count;
	}
	public Paging<DataDictionary> findDataDictList(Condition condition) {
		int totalCount=findDataDictionaryCount(condition);
		Paging<DataDictionary> paging=new Paging<DataDictionary>(condition.getPageNo(), condition.getPageSize(), totalCount);
		Map<String, Object> map=condition.getMap();
		map.put("index", condition.getIndex());
		map.put("pageSize",condition.getPageSize());
		List<DataDictionary> dictionaries= dictionaryMapper.findDataDictList(map);
		paging.setList(dictionaries);
		return paging;
	}
	private int findDataDictionaryCount(Condition condition) {
		int count=dictionaryMapper.findDataDictionaryCount(condition.getMap());
		return count;
	}
	public DataDictionary findDataDict(Long id) {
		DataDictionary dictionary= dictionaryMapper.findDataDict(id);
		return dictionary;
	}

	public int updateDataDict(DataDictionary dictionary) {
		int count=dictionaryMapper.updateDataDict(dictionary);
		
		return count;
	}

}
