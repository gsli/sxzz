package cn.com.gsli.model.mainimage;

import org.springframework.stereotype.Repository;

@Repository
public class MainImage {
	private Integer id;
	private String image;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public MainImage(Integer id, String image) {
		super();
		this.id = id;
		this.image = image;
	}
	@Override
	public String toString() {
		return "MainImage [id=" + id + ", image=" + image + "]";
	}
	public MainImage() {
		// TODO Auto-generated constructor stub
	}
	
}
