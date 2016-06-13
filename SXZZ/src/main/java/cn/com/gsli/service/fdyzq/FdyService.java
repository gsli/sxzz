package cn.com.gsli.service.fdyzq;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.com.gsli.common.FileHelper;
import cn.com.gsli.common.PageModel;
import cn.com.gsli.model.fdyzq.Fdy;

@Service
public class FdyService {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	private SqlSession sqlSession;
	private List<Fdy> list;
	private int size = 10;

	@Transactional
	public int addInfo(Fdy fdy) {
		if (fdy.getImage() == null) {
			fdy.setImage("zanwutupian.jpg");
		}
		sqlSession = sqlSessionFactory.openSession();
		int result = sqlSession.insert("cn.com.gsli.addFdy", fdy);
		if (result > 0) {
			return result;
		} else {
			return 0;
		}
	}

	// 浏览辅导员信息(分页查询)
	@Transactional
	public PageModel<Fdy> lookFdy(int page) {
		sqlSession = sqlSessionFactory.openSession();
		PageModel<Fdy> pageModel = new PageModel<Fdy>();
		int totalCount = sqlSession.selectList("cn.com.gsli.allFdy").size();
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
		List<Fdy> data = sqlSession.selectList("cn.com.gsli.pageFdy", map);
		pageModel.setData(data);
		return pageModel;
	}

	// 删除辅导员信息
	@Transactional
	public int delFdy(Integer id, String img) {
		sqlSession = sqlSessionFactory.openSession();
		int res = sqlSession.delete("cn.com.gsli.delFdy", id);
		if(res > 0 && img != "zanwutupian.jpg") {
			File file = new File(FileHelper.root, img);
			file.delete();
			return res;
		}
		return 0;
	}
	
	//查看辅导员详细信息
	@Transactional
	public Fdy xxFdy(Integer id) {
		sqlSession = sqlSessionFactory.openSession();
		Fdy fdy = sqlSession.selectOne("cn.com.gsli.xxFdy", id);
		return fdy;
	}
	
	//修改辅导员信息
	@Transactional
	public int updFdy(Fdy fdy) {
		sqlSession = sqlSessionFactory.openSession();
		int res = sqlSession.update("cn.com.gsli.updFdy", fdy);
		if(res > 0) {
			return res;
		}else {
			return 0;
		}
	}
	
	//批量删除
	@Transactional
	public void mulDel(Integer id) {
		sqlSession = sqlSessionFactory.openSession();
		sqlSession.delete("cn.com.gsli.delFdy", id);
	}
}
