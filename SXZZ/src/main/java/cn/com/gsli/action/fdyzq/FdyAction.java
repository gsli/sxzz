package cn.com.gsli.action.fdyzq;

import java.io.File;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
@Controller
public class FdyAction extends ActionSupport {
	private String name;
	private String motto;
	private File image;
	private String imageFileName;
	private String grjj;
	private String mess = "";

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
		System.out.println("asdfasdf");
		if(name != "") {
			System.out.println(name+"--"+motto+"--"+grjj+"**"+imageFileName);
			mess = "恭喜，添加成功。";
			return SUCCESS;
		}else {
			mess = "添加失败！";
			return ERROR;
		}
		
	}

}
