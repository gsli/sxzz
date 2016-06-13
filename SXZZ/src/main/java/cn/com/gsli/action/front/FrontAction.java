package cn.com.gsli.action.front;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.gsli.common.PageModel;
import cn.com.gsli.service.maintext.MainTextService;
@Controller
public class FrontAction extends ActionSupport implements RequestAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String, Object> request;
	@Autowired
	private MainTextService mainTextService;
	//private PageModel tzgg,szyw,xydt,ahzy,xjdx,llxx,xszc,flfg,alfx,zyfw,shsj,jddd,ypxs,hdsp;
	private PageModel pageModel;
	
	public String getData(){
		pageModel=mainTextService.typePage(1, 8, 1);
		request.put("tzgg", pageModel);
		pageModel=mainTextService.typePage(1, 8, 2);
		request.put("szyw", pageModel);
		pageModel=mainTextService.typePage(1, 8, 3);
		request.put("xydt", pageModel);
		pageModel=mainTextService.typePage(1, 8, 4);
		request.put("ahzy", pageModel);
		pageModel=mainTextService.typePage(1, 8, 5);
		request.put("xszc", pageModel);
		pageModel=mainTextService.typePage(1, 8, 6);
		request.put("flfg", pageModel);
		pageModel=mainTextService.typePage(1, 8, 7);
		request.put("alfx", pageModel);
		pageModel=mainTextService.typePage(1, 8, 8);
		request.put("zyfw", pageModel);
		pageModel=mainTextService.typePage(1, 8, 9);
		request.put("shsj", pageModel);
		pageModel=mainTextService.typePage(1, 8, 10);
		request.put("jddd", pageModel);
		pageModel=mainTextService.typePage(1, 8, 11);
		request.put("ypxs", pageModel);
		pageModel=mainTextService.typePage(1, 8, 12);
		request.put("xydt", pageModel);
		pageModel=mainTextService.typePage(1, 8, 13);
		request.put("hdsp", pageModel);
		
		return SUCCESS;
	}
	
	
	
	public void setRequest(Map<String, Object> request) {
		this.request=request;
	}
	
}
