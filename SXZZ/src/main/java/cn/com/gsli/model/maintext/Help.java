package cn.com.gsli.model.maintext;

import org.springframework.stereotype.Repository;

@Repository
public class Help {
	private Integer currentItem;
	private Integer pageSize;
	private Integer type;
	public Integer getCurrentItem() {
		return currentItem;
	}
	public void setCurrentItem(Integer currentItem) {
		this.currentItem = currentItem;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	
}
