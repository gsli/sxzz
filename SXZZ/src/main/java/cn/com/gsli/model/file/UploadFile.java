package cn.com.gsli.model.file;

import org.springframework.stereotype.Repository;

@Repository
public class UploadFile {
	private Integer id;
	private String name;
	private String fileName;
	private String uploadDate;
	private Integer type;
	public String getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
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
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public UploadFile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UploadFile(Integer id, String name, String fileName, String uploadDate) {
		super();
		this.id = id;
		this.name = name;
		this.fileName = fileName;
		this.uploadDate = uploadDate;
	}
	public UploadFile(String name, String fileName, String uploadDate) {
		super();
		this.name = name;
		this.fileName = fileName;
		this.uploadDate = uploadDate;
	}
	@Override
	public String toString() {
		return "File [id=" + id + ", name=" + name + ", fileName=" + fileName + ", uploadDate=" + uploadDate + "]";
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	
}
