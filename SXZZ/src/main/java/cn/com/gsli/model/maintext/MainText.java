package cn.com.gsli.model.maintext;

import org.springframework.stereotype.Repository;

@Repository
public class MainText {
	private Integer id;
	private String title;
	private String context;
	private Integer type;
	private String date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public MainText(Integer id, String title, String context, Integer type, String date) {
		super();
		this.id = id;
		this.title = title;
		this.context = context;
		this.type = type;
		this.date = date;
	}
	public MainText() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "MainText [id=" + id + ", title=" + title + ", context=" + context + ", type=" + type + ", date=" + date
				+ "]";
	}
	
}
