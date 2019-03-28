package com.airi.util;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

/** 
 * Desc:日期类型的反序列化类 
 *  
 * @author zhangwei<wei.zw@corp.netease.com> 
 * @since 2015年9月18日 下午4:31:02 
 * @version v 0.1 
 */  
public class DateJsonDeserializer extends JsonDeserializer<Date> {  
  
    /** 
     * @see com.fasterxml.jackson.databind.JsonDeserializer#deserialize(com.fasterxml.jackson.core.JsonParser, 
     *      com.fasterxml.jackson.databind.DeserializationContext) 
     */  
    @Override  
    public Date deserialize(JsonParser parser, DeserializationContext context)  
            throws IOException, JsonProcessingException {  
        try {  
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
            String dateStr=parser.getValueAsString();
//            String[] strings= dateStr.split("-");
//            String dateNormal=strings[0];
//            for (int i = 1; i < strings.length; i++) {
//			    int  dateNum= Integer.parseInt(strings[i]);
//			    String md="";
//			    if(dateNum<10){
//			         md="0"+dateNum;
//			    }else{
//			    	md=String.valueOf(dateNum);
//			    }
//			    dateNormal=dateNormal+"-"+md;
//			}
//           
            return sdf.parse(dateStr);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        return null;  
    }  
  
}  