package cn.com.gsli.service.file;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.com.gsli.common.PageModel;
import cn.com.gsli.model.fdyzq.Fdy;
import cn.com.gsli.model.file.UploadFile;

@Service
public class FileService {
	@Autowired
	SqlSessionFactory sqlSessionFactory;
	SqlSession sqlSession;
	private int size = 10;
	
	//上传文件
	@Transactional
	public int uploadFile(UploadFile file) {
		sqlSession = sqlSessionFactory.openSession();
		int res = sqlSession.insert("cn.com.gsli.addFile", file);
		if(res > 0) {
			return res;
		}else {
			return 0;
		}
	}
	
	//浏览文档
	@Transactional
	public PageModel<UploadFile> lookFile(Integer page) {
		sqlSession = sqlSessionFactory.openSession();
		PageModel<UploadFile> pageModel = new PageModel<UploadFile>();
		int totalCount = sqlSession.selectList("cn.com.gsli.allFile",1).size();
		int total;
		if (totalCount % size == 0) {
			total = totalCount / size;
		} else {
			total = totalCount / size + 1;
		}
		pageModel.setTotalPage(total);
		pageModel.setCurrentPage(page);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startPage", (pageModel.getCurrentPage() - 1) * size);
		map.put("size", size);
		map.put("type", 1);
		List<UploadFile> data = sqlSession.selectList("cn.com.gsli.pageFile", map);
		pageModel.setData(data);
		return pageModel;
	}
	
	//删除
	@Transactional
	public int delWord(Integer id) {
		sqlSession = sqlSessionFactory.openSession();
		int res = sqlSession.delete("cn.com.gsli.delFile", id);
		if(res > 0) {
			return res;
		}
		return 0;
	}
	
	//浏览图片
	@Transactional
	public PageModel<UploadFile> lookImg(Integer page) {
		sqlSession = sqlSessionFactory.openSession();
		PageModel<UploadFile> pageModel = new PageModel<UploadFile>();
		int totalCount = sqlSession.selectList("cn.com.gsli.allFile",2).size();
		int total;
		if (totalCount % size == 0) {
			total = totalCount / size;
		} else {
			total = totalCount / size + 1;
		}
		pageModel.setTotalPage(total);
		pageModel.setCurrentPage(page);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startPage", (pageModel.getCurrentPage() - 1) * size);
		map.put("size", size);
		map.put("type", 2);
		List<UploadFile> data = sqlSession.selectList("cn.com.gsli.pageFile", map);
		pageModel.setData(data);
		return pageModel;
	}
	
	//浏览视频
		@Transactional
		public PageModel<UploadFile> lookVedio(Integer page) {
			sqlSession = sqlSessionFactory.openSession();
			PageModel<UploadFile> pageModel = new PageModel<UploadFile>();
			int totalCount = sqlSession.selectList("cn.com.gsli.allFile",3).size();
			int total;
			if (totalCount % size == 0) {
				total = totalCount / size;
			} else {
				total = totalCount / size + 1;
			}
			pageModel.setTotalPage(total);
			pageModel.setCurrentPage(page);
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("startPage", (pageModel.getCurrentPage() - 1) * size);
			map.put("size", size);
			map.put("type", 3);
			List<UploadFile> data = sqlSession.selectList("cn.com.gsli.pageFile", map);
			pageModel.setData(data);
			return pageModel;
		}
		/*<div class="formtitle">
		<h3 style="color: red;">您能上传的文件格式包括xls,xlsx,doc,docx,txt,ppt,pptx,pdf,rar和zip,文件必须小于100M</h3>
	</div>*/
}
