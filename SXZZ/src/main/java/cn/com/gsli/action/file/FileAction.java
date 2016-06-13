package cn.com.gsli.action.file;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.gsli.common.FileHelper;
import cn.com.gsli.common.PageModel;
import cn.com.gsli.model.fdyzq.Fdy;
import cn.com.gsli.model.file.UploadFile;
import cn.com.gsli.service.file.FileService;

@Controller
public class FileAction extends ActionSupport implements RequestAware {

	private static final long serialVersionUID = 1L;
	private File file;
	private String fileFileName;
	private String mess;

	@Autowired
	private FileService fs;
	private UploadFile uploadFile;
	private Integer page;

	private Integer id;
	private String name;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String openPage() {
		mess = "";
		if (page == null) {
			page = 1;
		}
		PageModel<UploadFile> model = fs.lookFile(page);
		requestMap.put("model", model);
		return SUCCESS;
	}

	// 上传文档
	public String uploadWord() {
		if (fileFileName != null) {
			String name = FileHelper.upload(file, fileFileName, FileHelper.filePath);
			Date date = new Date();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String str = format.format(date);
			uploadFile = new UploadFile(name, fileFileName, str);
			uploadFile.setType(1);
			if (fs.uploadFile(uploadFile) > 0) {
				openPage();
				mess = "上传成功。";
				return SUCCESS;
			} else {
				mess = "上传失败！";
				return ERROR;
			}
		}
		return SUCCESS;
	}

	// 删除文档
	public String delWord() {
		file = new File(FileHelper.filePath, name);
		int res = fs.delWord(id);
		if (res > 0) {
			file.delete();
		}
		return SUCCESS;
	}

	// 打开图片页
	public String openImg() {
		mess = "";
		if (page == null) {
			page = 1;
		}
		PageModel<UploadFile> model = fs.lookImg(page);
		requestMap.put("model", model);
		return SUCCESS;
	}

	// 上传图片
	public String uploadImg() {
		if (fileFileName != null) {
			String name = FileHelper.upload(file, fileFileName, FileHelper.root);
			Date date = new Date();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String str = format.format(date);
			uploadFile = new UploadFile(name, fileFileName, str);
			uploadFile.setType(2);
			if (fs.uploadFile(uploadFile) > 0) {
				openImg();
				mess = "上传成功。";
				return SUCCESS;
			} else {
				mess = "上传失败！";
				return ERROR;
			}
		}
		return SUCCESS;
	}

	// 删除图片
	public String delImg() {
		file = new File(FileHelper.root, name);
		int res = fs.delWord(id);
		if (res > 0) {
			file.delete();
		}
		return SUCCESS;
	}

	// 打开视频页
	public String openVedio() {
		mess = "";
		if (page == null) {
			page = 1;
		}
		PageModel<UploadFile> model = fs.lookVedio(page);
		requestMap.put("model", model);
		return SUCCESS;
	}

	// 上传视频
	public String uploadVedio() {
		if (fileFileName != null) {
			String name = FileHelper.upload(file, fileFileName, FileHelper.filePath);
			Date date = new Date();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String str = format.format(date);
			uploadFile = new UploadFile(name, fileFileName, str);
			uploadFile.setType(3);
			if (fs.uploadFile(uploadFile) > 0) {
				openVedio();
				mess = "上传成功。";
				return SUCCESS;
			} else {
				mess = "上传失败！";
				return ERROR;
			}
		}
		return SUCCESS;
	}

	// 删除视频
	public String delVedio() {
		file = new File(FileHelper.filePath, name);
		int res = fs.delWord(id);
		if (res > 0) {
			file.delete();
		}
		return SUCCESS;
	}

	public String getMess() {
		return mess;
	}

	public void setMess(String mess) {
		this.mess = mess;
	}

	public UploadFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(UploadFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	private Map<String, Object> requestMap;

	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap = requestMap;
	}
}
