package cn.com.gsli.action.mainimage;

import java.io.File;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.com.gsli.common.FileHelper;
import cn.com.gsli.common.PageModel;
import cn.com.gsli.model.mainimage.MainImage;
import cn.com.gsli.service.mainimage.MainImageService;
@Controller
public class MainImageAction extends ActionSupport implements ModelDriven<MainImage>,RequestAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private MainImage mainImage;
	private Map<String, Object> request;
	private Integer currentPage;
	@Autowired
	private MainImageService mainImageService;
	private String message;
	private PageModel<MainImage> pageModel;
	
	private Integer id;
	private File imageM;
	private String imageMFileName;
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	/*添加*/
	public String add(){
		if(imageM!=null){
			String imageName = FileHelper.upload(imageM, imageMFileName, FileHelper.root);
			mainImage.setImage(imageName);
			mainImageService.add(mainImage);
			request.put("message", "添加成功！");
			return "addSuccess";
		}else{
			request.put("message", "请选择图片后再进行上传！");
			return "addFail";
		}
		
	}
	/*查询列表*/
	public String query(){
		if(currentPage==null){
			currentPage=1;
		}
		pageModel=mainImageService.getPage(currentPage, 1);
		request.put("pageModel", pageModel);
		return "querySuccess";
	}
	public String delete(){
		deleteFile(FileHelper.root+"/"+mainImageService.get(id).getImage());
		if(mainImageService.delete(id)){
			return "deleteSuccess";
		}else{
			return "deleteFail";
		}
	}
	
	
	public void setRequest(Map<String, Object> arg0) {
		request=arg0;
	}

	public MainImage getModel() {
		return mainImage;
	}

	public MainImage getMainImage() {
		return mainImage;
	}

	public void setMainImage(MainImage mainImage) {
		this.mainImage = mainImage;
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
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	/*删除文件*/
	public static boolean deleteFile(String sPath) {  
	    boolean flag = false;  
	    File file = new File(sPath);  
	      
	    if (file.isFile() && file.exists()) {  
	        file.delete();  
	        flag = true;  
	    }  
	    return flag;  
	}
	public File getImageM() {
		return imageM;
	}
	public void setImageM(File imageM) {
		this.imageM = imageM;
	}
	public String getImageMFileName() {
		return imageMFileName;
	}
	public void setImageMFileName(String imageMFileName) {
		this.imageMFileName = imageMFileName;
	}  
	
}
