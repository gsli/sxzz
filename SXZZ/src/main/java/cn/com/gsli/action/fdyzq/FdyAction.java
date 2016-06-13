package cn.com.gsli.action.fdyzq;

import java.io.File;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.gsli.common.FileHelper;
import cn.com.gsli.common.PageModel;
import cn.com.gsli.model.fdyzq.Fdy;
import cn.com.gsli.service.fdyzq.FdyService;
@Controller
@Scope("prototype")
public class FdyAction extends ActionSupport implements RequestAware {
	private static final long serialVersionUID = 1L;
	private String name;
	private String motto;
	private File image;
	private String imageFileName;
	private String grjj;
	private String mess = "";
	@Autowired
	private FdyService fs;
	private Fdy fdy;
	
	private Integer id;
	private String img;
	private Integer page;

	public Fdy getFdy() {
		return fdy;
	}

	public void setFdy(Fdy fdy) {
		this.fdy = fdy;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMotto() {
		return motto;
	}

	public void setMotto(String motto) {
		this.motto = motto;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getGrjj() {
		return grjj;
	}

	public void setGrjj(String grjj) {
		this.grjj = grjj;
	}
	
	public String getMess() {
		return mess;
	}

	public void setMess(String mess) {
		this.mess = mess;
	}

	//添加辅导员信息
	public String addInfo() {
		if(name.length() > 1 && motto.length() > 1 && grjj.length() > 10) {
			String imgPath = FileHelper.upload(image, imageFileName, FileHelper.root);
			fdy = new Fdy(name,motto,grjj,imgPath);
			int result = fs.addInfo(fdy);
			if(result > 0) {
				mess = "恭喜，添加成功。";
				requestMap.put("mess", mess);
				return SUCCESS;
			}else {
				mess = "添加失败！";
				requestMap.put("mess", mess);
				return ERROR;
			}
		}else {
			mess = "信息不完整，添加失败！";
			requestMap.put("mess", mess);
			return ERROR;
		}
		
	}
	
	//浏览辅导员信息
	public String lookFdy() {
		if(page == null) {
			page = 1;
		}
		PageModel<Fdy> model = fs.lookFdy(page);
		requestMap.put("model", model);
		return SUCCESS;
	}
	
	//删除辅导员信息
	public String delFdy() {
		int res = fs.delFdy(id, img);
		if(res > 0) {
			return SUCCESS;
		}else {
			return ERROR;
		}
	}
	
	//查看辅导员详细信息
	public String xxFdy() {
		requestMap.put("fdy", fs.xxFdy(id));
		return SUCCESS;
	}
	
	//修改辅导员信息
	public String xgFdy() {
		requestMap.put("fdy", fs.xxFdy(id));
		return SUCCESS;
	}
	//确认修改
	public String updFdy() {
		String imgPath = "";
		if(imageFileName == null) {
			imgPath = img;
		}else {
			imgPath = FileHelper.upload(image, imageFileName, FileHelper.root);
			if(img != "zanwutupian.jpg") {
				File file = new File(FileHelper.root,img);
				file.delete();
			}
		}
		fdy = new Fdy(id, name, motto, grjj, imgPath);
		if(fs.updFdy(fdy) > 0){
			return SUCCESS;
		}
		mess="修改失败！";
		return ERROR;
	}
	
	//批量删除
	public String mulDel() {
		String ids[] = mess.split("-");
		for(int i = 0; i < ids.length; i++) {
			fs.mulDel(Integer.parseInt(ids[i]));
		}
		return SUCCESS;
	}
	
	private Map<String, Object> requestMap;
	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap = requestMap;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

}
