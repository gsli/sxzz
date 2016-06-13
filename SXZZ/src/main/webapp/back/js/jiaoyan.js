function title_fun(){
	var title=document.getElementById("title");
	var label_title=document.getElementById("label_title");
	if(title.value==""){
		label_title.style.color="#f00"
		label_title.innerHTML="*标题不能为空！";
		return false;
	}else{
		label_title.innerHTML="";
		return true;
	}
}
function date_fun(){
	var date=document.getElementById("date_new");
	var label_title=document.getElementById("label_date");
	if(title.value==""){
		label_title.style.color="#f00"
		label_title.innerHTML="*日期格式不正确！";
		return false;
	}else{
		label_title.innerHTML="";
		return true;
	}
	
}
/*内容校验*/
function hasContent() {
    if(UE.getEditor('editor').hasContents()){
    	return true;
    }else{
    	alert("内容为空，请编辑后保存!");
    	return false;
    }
}

/*提交校验*/
function checkAll(){
	return title_fun() && date_fun() && hasContent();
}