package com.airi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.airi.model.DataDictionary;
import com.airi.service.DataDictionaryService;
import com.airi.util.Condition;
import com.airi.util.Paging;

@Controller
@RequestMapping("basd/dataDictionaryController")
public class DataDictionaryController {
	@Autowired
	private DataDictionaryService dictionaryService;
	
	@RequestMapping(value="addDataDict",method=RequestMethod.POST)
	public String addDataDict(DataDictionary dictionary){
		int count=dictionaryService.addDataDict(dictionary);
		String dictUrl="dict";
		if(count>0){
			dictUrl="dict_add";
		}
		return dictUrl;
		
	}
	@RequestMapping(value="findDictionaries",method=RequestMethod.GET)
	public String findDictionaries(Condition condition, Model model){
		Paging<DataDictionary> paging= dictionaryService.findDataDictList(condition);
		model.addAttribute("dictPaging",paging);
		return "dict";
		
	}
	
	@RequestMapping(value="findDataDict",method=RequestMethod.GET)
	public String findDataDict(Long id,Model model){
	    DataDictionary dictionary=dictionaryService.findDataDict(id);
	    model.addAttribute("dictionary",dictionary);
	    String dictUrl="dict";
	    if(dictionary!=null){
	    	dictUrl="dict_edit";
	    }
		return dictUrl;
		
	}
	@RequestMapping(value="editDataDict",method=RequestMethod.POST)
	public String editDataDict(DataDictionary dictionary){
		int count=dictionaryService.updateDataDict(dictionary);
		String dictUrl="dict_edit";
		if(count>0){
			dictUrl="dict";
		}
		return dictUrl;
		
	}

}
