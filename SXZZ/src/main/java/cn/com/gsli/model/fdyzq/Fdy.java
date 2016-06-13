package cn.com.gsli.model.fdyzq;

import org.springframework.stereotype.Repository;

@Repository
public class Fdy {
	private Integer id;
	private String name;
	private String motto;
	private String grjj;
	private String image;
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
	public String getMotto() {
		return motto;
	}
	public void setMotto(String motto) {
		this.motto = motto;
	}
	public String getGrjj() {
		return grjj;
	}
	public void setGrjj(String grjj) {
		this.grjj = grjj;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Fdy() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Fdy(Integer id, String name, String motto, String grjj, String image) {
		super();
		this.id = id;
		this.name = name;
		this.motto = motto;
		this.grjj = grjj;
		this.image = image;
	}
	public Fdy(String name, String motto, String grjj, String image) {
		super();
		this.name = name;
		this.motto = motto;
		this.grjj = grjj;
		this.image = image;
	}
	@Override
	public String toString() {
		return "Fdy [id=" + id + ", name=" + name + ", motto=" + motto + ", grjj=" + grjj + ", image=" + image + "]";
	}
}
