package cn.com.gsli.action.maintext;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.com.gsli.common.PageModel;
import cn.com.gsli.model.maintext.MainText;
import cn.com.gsli.service.maintext.MainTextService;
@Controller
public class MianTextAction extends ActionSupport implements ModelDriven<MainText>,RequestAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private MainText mainText;
	private Map<String, Object> request;
	private Integer currentPage;
	@Autowired
	private MainTextService mainTextService;
	private String message;
	private Integer myType;
	private PageModel<MainText> pageModel;
	private Integer id;
	
	
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	/*添加*/
	public String add(){
		//System.out.println(mainText);
		if(mainTextService.add(mainText)){
			message="添加成功！";
			request.put("message", message);
			return "addSuccess";
		}else{
			return "addfail";
		}
		
	}
	/*查询列表*/
	public String query(){
		if(currentPage==null){
			currentPage=1;
		}
		if(myType==null){
			pageModel=mainTextService.getPage(currentPage, 9);
		}else{
			pageModel=new PageModel<MainText>();
			pageModel.setCurrentPage(1);
			pageModel.setPageSize(mainTextService.listType(myType).size());
			pageModel.setTotalPage(1);
			pageModel.setData(mainTextService.listType(myType));
		}
		
		request.put("pageModel", pageModel);
		//System.out.println(pageModel.getData());
		return "querySuccess";
	}
	public String editor(){
		if(id!=null){
			mainText=mainTextService.get(id);
			request.put("mainText", mainText);
			return "editorSuccess";
		}else{
			return "editorFail";
		}
	}
	public String save(){
		mainText.setId(id);
		mainTextService.update(mainText);
		return "saveSuccess";
	}
	public String delete(){
		if(mainTextService.delete(id)){
			return "deleteSuccess";
		}else{
			return "deleteFail";
		}
	}
	
	
	public void setRequest(Map<String, Object> arg0) {
		request=arg0;
	}

	public MainText getModel() {
		return mainText;
	}

	public MainText getMainText() {
		return mainText;
	}

	public void setMainText(MainText mainText) {
		this.mainText = mainText;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Integer getMyType() {
		return myType;
	}
	public void setMyType(Integer myType) {
		this.myType = myType;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
}
