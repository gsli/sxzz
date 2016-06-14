package cn.com.gsli.model.movie;

import org.springframework.stereotype.Repository;

@Repository
public class Movie {
	private Integer id;
	private String name;
	private String title;
	private String date;
	private int type;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Movie(Integer id, String name, String title, String date, int type) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.date = date;
		this.type = type;
	}
	public Movie(String name, String title, String date, int type) {
		super();
		this.name = name;
		this.title = title;
		this.date = date;
		this.type = type;
	}
	@Override
	public String toString() {
		return "Movie [id=" + id + ", name=" + name + ", title=" + title + ", date=" + date + ", type=" + type + "]";
	}
}
