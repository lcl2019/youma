function reload(){
	window.location.reload();
}
var submit=function(id){
	$("#"+id).submit();
}
function help(msg){
	alert('��ӭʹ��'+msg);
}

function to(url){
	window.location.href=url;
}
function back(url){
	/*history.go(-1);*/
	to(url);
}
function save(name){
    switch (name) {
	  case "editSalesLick":
		  var salesLick= $("form").serialize();
		  $.post("editSalesLick",
				  salesLick,
				  function(data){
			        dialog(data, "保存",null);
		          }
			                               
		  )
	  	
	  	break;
	  case "editSalesPlan":
		  var salesLick= $("form").serialize();
		  $.post("editSalesLick",
				  salesLick,
				  function(data){
			        dialog(data, "保存",null);
		          }
			                               
		  )
	  	
	  	break;

	  default:
	  	break;
	  }

}
function add(url){
	$("#"+url).submit();
//	if("${id}">0){
//		alert('�½��ɹ���');
//		to("${pageContext.request.contextPath}/sale/salController.do?method=findSalChance");
//	}else{
//		alert("保存失败")
//	}
//	
	
}
var dialog=function(data,prefix,toUrl){
	 var msg;
	 if(data>0){
     	msg=prefix+"成功";
     }else{
     	msg=prefix+"失败";
     }
     $("#dialog>h5").text(msg);
     $("#dialog").dialog("open"); 
     if(toUrl!=null){
  		to(toUrl);
  	 }
}
function del(value){
//	if (window.confirm("ȷ��ɾ��"+msg+"��")){
//		reload();
//	}
	$.post("deleteSalesLick","no="+value,function(data){
		dialog(data,'删除','getLickList?pageNow=1&pageSize=10');
	});
}
function setCurTime(oid){
	var now=new Date();
	var year=now.getYear();
	var month=now.getMonth()+1;
	var day=now.getDate();
	var hours=now.getHours();
	var minutes=now.getMinutes();
	var seconds=now.getSeconds();
	var timeString = year+"-"+month+"-"+day+" "+hours+":"+minutes+":"+seconds;
	var oCtl = document.getElementById(oid);
	oCtl.value = timeString;
}
function fmtDateToCN(date){
	
	var y = date.getFullYear();
	var m = (date.getMonth() + 1);
	var d = date.getDate();
	var hours=date.getHours();
	var minutes=date.getMinutes();
	var seconds=date.getSeconds();
	var result=y+"年"+m+"月"+d+"日"+hours+"时"+mimutes+"分"+seconds+"秒";
	
	return result;
	
}
function fmtDateToChinese(date){
	var today = date;
	var chinese = [ '〇', '一', '二', '三', '四', '五', '六', '七', '八', '九' ];
	var y = today.getFullYear().toString();
	var m = (today.getMonth() + 1).toString();
	var d = today.getDate().toString();
	var result = "";
	for (var i = 0; i < y.length; i++) {
		result += chinese[y.charAt(i)];
	}
	result += "年";
	if (m.length == 2) {
		if (m.charAt(0) == "1") {
			result += "十";
			if (m.charAt(1) != "0") {
				result += chinese[m.charAt(1)];
			}
			result += "月";
		}
	} else {
		result += (chinese[m.charAt(0)] + "月");
	}
	if (d.length == 2) {
		result += chinese[d.charAt(0)] + "十";
		if (d.charAt(1) != '0') {
			result += chinese[d.charAt(1)];
		}
		result += "日";
	} else {
		result += (chinese[d.charAt(0)] + "日");
	}
	return result.replace("月一十", "月十");

}