package cn.com.gsli.service.mainimage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.com.gsli.common.PageModel;
import cn.com.gsli.model.mainimage.MainImage;
import cn.com.gsli.model.maintext.Help;


@Service
@Scope("prototype")
public class MainImageService{
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	private SqlSession sqlSession;
	private int res;

	private PageModel<MainImage> pageModel=new PageModel<MainImage>();
	private MainImage mainImage;
	@Autowired
	private Help help;
	
	@Transactional
	public boolean add(MainImage t) {
		sqlSession=sqlSessionFactory.openSession();
		res=sqlSession.insert("cn.com.gsli.model.mainimage.MainImageMapper.add", t);
		sqlSession.commit();
		sqlSession.close();
		if(res>0){
			return true;
		}else{
			return false;
		}
		
	}
	public List<MainImage> list() {
		sqlSession=sqlSessionFactory.openSession();
		List<MainImage> mainImages = sqlSession.selectList("cn.com.gsli.model.mainimage.MainImageMapper.queryAll");
		sqlSession.commit();
		sqlSession.close();
		return mainImages;
		
	}
	public boolean delete(Integer code) {
		sqlSession=sqlSessionFactory.openSession();
		res=sqlSession.delete("cn.com.gsli.model.mainimage.MainImageMapper.delete",code);
		sqlSession.commit();
		sqlSession.close();
		if(res>0){
			return true;
		}else{
			return false;
		}
		
	}
	public MainImage get(Integer code) {
		sqlSession=sqlSessionFactory.openSession();
		mainImage = sqlSession.selectOne("cn.com.gsli.model.mainimage.MainImageMapper.get",code);
		sqlSession.commit();
		sqlSession.close();
		
		return mainImage;
	}
	
	public PageModel<MainImage> getPage(Integer pageRequest,int pageSize) {
		pageModel.setPageSize(pageSize);
		int totalPage=this.list().size();
		if(totalPage%pageSize==0){
			pageModel.setTotalPage(totalPage/pageSize);
		}else{
			pageModel.setTotalPage(totalPage/pageSize+1);
		}
		pageModel.setCurrentPage(pageRequest);
		pageModel.setCurrentItem((pageModel.getCurrentPage()-1)*pageModel.getPageSize());
		help.setCurrentItem(pageModel.getCurrentItem());
		help.setPageSize(pageSize);
		
		sqlSession=sqlSessionFactory.openSession();
		List<MainImage> mainImages = sqlSession.selectList("cn.com.gsli.model.mainimage.MainImageMapper.queryPage",help);
		sqlSession.commit();
		sqlSession.close();
		pageModel.setData(mainImages);
		return pageModel;
	}
	
	
	
}
