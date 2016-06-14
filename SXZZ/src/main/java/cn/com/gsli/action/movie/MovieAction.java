package cn.com.gsli.action.movie;

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
import cn.com.gsli.model.movie.Movie;
import cn.com.gsli.service.movie.MovieService;

@Controller
public class MovieAction extends ActionSupport implements RequestAware {
	
	private static final long serialVersionUID = 1L;
	private String mess;
	private Integer page;
	private File file;
	private String fileFileName;
	private Movie movie;
	private Integer id;
	private String name;
	
	@Autowired
	private MovieService ms;
	
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
	public String getMess() {
		return mess;
	}
	public void setMess(String mess) {
		this.mess = mess;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	//打开影片欣赏界面
	public String openMovie() {
		mess = "";
		if (page == null) {
			page = 1;
		}
		PageModel<Movie> model = ms.lookFile(page);
		requestMap.put("model", model);
		return SUCCESS;
	}
	
	//上传影片
	public String uploadMovie() {
		if (fileFileName != null) {
			String name = FileHelper.upload(file, fileFileName, FileHelper.filePath);
			Date date = new Date();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String str = format.format(date);
			movie = new Movie(name, fileFileName, str, 1);
			if (ms.uploadFile(movie) > 0) {
				openMovie();
				mess = "上传成功。";
				return SUCCESS;
			} else {
				mess = "上传失败！";
				return ERROR;
			}
		}
		return SUCCESS;
	}
	
	// 删除影片
		public String delMovie() {
			file = new File(FileHelper.filePath, name);
			int res = ms.delMovie(id);
			if (res > 0) {
				file.delete();
			}
			return SUCCESS;
		}
		
	//打开活动视频页面
		public String openAct() {
			mess = "";
			if (page == null) {
				page = 1;
			}
			PageModel<Movie> model = ms.lookAct(page);
			requestMap.put("model", model);
			return SUCCESS;
		}
		
		//上传影片
		public String uploadAct() {
			if (fileFileName != null) {
				String name = FileHelper.upload(file, fileFileName, FileHelper.filePath);
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				String str = format.format(date);
				movie = new Movie(name, fileFileName, str, 2);
				if (ms.uploadFile(movie) > 0) {
					openAct();
					mess = "上传成功。";
					return SUCCESS;
				} else {
					mess = "上传失败！";
					return ERROR;
				}
			}
			return SUCCESS;
		}
		
private Map<String, Object> requestMap;
	public void setRequest(Map<String, Object> requestMap) {
		// TODO Auto-generated method stub
		this.requestMap = requestMap;
	}
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}
}
