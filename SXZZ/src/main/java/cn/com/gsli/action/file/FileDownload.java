package cn.com.gsli.action.file;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.com.gsli.common.FileHelper;
@Controller
public class FileDownload extends ActionSupport{  
      
	private static final long serialVersionUID = 1L;

	private String contentType;
	private long contentLength;
	private String contentDisposition;
	private InputStream inputStream;
	private String name;
	private String realName;
      
    public String getContentType() {
		return contentType;
	}


	public void setContentType(String contentType) {
		this.contentType = contentType;
	}


	public long getContentLength() {
		return contentLength;
	}


	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}


	public String getContentDisposition() {
		return contentDisposition;
	}


	public void setContentDisposition(String contentDisposition) {
		this.contentDisposition = contentDisposition;
	}


	public InputStream getInputStream() {
		return inputStream;
	}


	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}


	@Override  
    public String execute() throws Exception {  
        //确定各个成员变量的值
		contentType = "*";
		contentDisposition = "attachment;filename="+realName;
		//+java.net.URLEncoder.encode(getName(), "UTF-8"));
		String fileName = FileHelper.root+"/"+realName;
		fileName = new String(fileName.getBytes(), "ISO8859-1");
		inputStream = new FileInputStream(fileName);
		contentLength = inputStream.available();
		
        return SUCCESS;  
    }
	
	public String download() throws Exception {
		//确定各个成员变量的值
				contentType = "*";
				contentDisposition = "attachment;filename="+realName;
				//ServletContext servletContext = ServletActionContext.getServletContext();
				String fileName = FileHelper.filePath+"/"+realName;
				fileName = new String(fileName.getBytes(), "ISO8859-1");
				inputStream = new FileInputStream(fileName);
				contentLength = inputStream.available();
		return SUCCESS;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getRealName() {
		return realName;
	}


	public void setRealName(String realName) {
		this.realName = realName;
	}  
  
}