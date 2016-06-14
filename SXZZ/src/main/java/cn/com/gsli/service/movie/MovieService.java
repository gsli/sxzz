package cn.com.gsli.service.movie;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.com.gsli.common.PageModel;
import cn.com.gsli.model.movie.Movie;

@Service
public class MovieService {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	private SqlSession sqlSession;
	private int size = 10;
	
	//浏览文档
		@Transactional
		public PageModel<Movie> lookFile(Integer page) {
			sqlSession = sqlSessionFactory.openSession();
			PageModel<Movie> pageModel = new PageModel<Movie>();
			int totalCount = sqlSession.selectList("cn.com.gsli.allMovie",1).size();
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
			List<Movie> data = sqlSession.selectList("cn.com.gsli.pageMovie", map);
			pageModel.setData(data);
			return pageModel;
		}
		
		//上传文件
		@Transactional
		public int uploadFile(Movie file) {
			sqlSession = sqlSessionFactory.openSession();
			int res = sqlSession.insert("cn.com.gsli.addMovie", file);
			if(res > 0) {
				return res;
			}else {
				return 0;
			}
		}
		
		//删除
		@Transactional
		public int delMovie(Integer id) {
			sqlSession = sqlSessionFactory.openSession();
			int res = sqlSession.delete("cn.com.gsli.delMovie", id);
			if(res > 0) {
				return res;
			}
			return 0;
		}
		
		//浏览活动视频
				@Transactional
				public PageModel<Movie> lookAct(Integer page) {
					sqlSession = sqlSessionFactory.openSession();
					PageModel<Movie> pageModel = new PageModel<Movie>();
					int totalCount = sqlSession.selectList("cn.com.gsli.allMovie",2).size();
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
					List<Movie> data = sqlSession.selectList("cn.com.gsli.pageMovie", map);
					pageModel.setData(data);
					return pageModel;
				}
}
