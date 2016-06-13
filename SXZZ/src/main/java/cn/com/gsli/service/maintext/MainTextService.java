package cn.com.gsli.service.maintext;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.com.gsli.common.PageModel;
import cn.com.gsli.model.maintext.Help;
import cn.com.gsli.model.maintext.MainText;


@Service
@Scope("prototype")
public class MainTextService{
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	private SqlSession sqlSession;
	private int res;

	private PageModel<MainText> pageModel=new PageModel<MainText>();
	private MainText mainText;
	@Autowired
	private Help help;
	

	public boolean add(MainText t) {
		sqlSession=sqlSessionFactory.openSession();
		res=sqlSession.insert("cn.com.gsli.model.maintext.MainTextMapper.add", t);
		sqlSession.commit();
		sqlSession.close();
		if(res>0){
			return true;
		}else{
			return false;
		}
		
	}
	public List<MainText> list() {
		sqlSession=sqlSessionFactory.openSession();
		List<MainText> mainTexts = sqlSession.selectList("cn.com.gsli.model.maintext.MainTextMapper.queryAll");
		sqlSession.commit();
		sqlSession.close();
		return mainTexts;
		
	}
	public List<MainText> listType(Integer type) {
		sqlSession=sqlSessionFactory.openSession();
		List<MainText> mainTexts = sqlSession.selectList("cn.com.gsli.model.maintext.MainTextMapper.queryType",type);
		sqlSession.commit();
		sqlSession.close();
		return mainTexts;
	}
	public boolean delete(Integer code) {
		sqlSession=sqlSessionFactory.openSession();
		res=sqlSession.delete("cn.com.gsli.model.maintext.MainTextMapper.delete",code);
		sqlSession.commit();
		sqlSession.close();
		if(res>0){
			return true;
		}else{
			return false;
		}
		
	}
	public MainText get(Integer code) {
		sqlSession=sqlSessionFactory.openSession();
		mainText = sqlSession.selectOne("cn.com.gsli.model.maintext.MainTextMapper.get",code);
		sqlSession.commit();
		sqlSession.close();
		
		return mainText;
	}
	public boolean update(MainText t) {
		sqlSession=sqlSessionFactory.openSession();
		res=sqlSession.update("cn.com.gsli.model.maintext.MainTextMapper.save",t);
		sqlSession.commit();
		sqlSession.close();
		if(res>0){
			return true;
		}else{
			return false;
		}
		
	}
	public PageModel<MainText> getPage(Integer pageRequest,int pageSize) {
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
		List<MainText> MainTexts = sqlSession.selectList("cn.com.gsli.model.maintext.MainTextMapper.queryPage",help);
		sqlSession.commit();
		sqlSession.close();
		pageModel.setData(MainTexts);
		return pageModel;
	}
	public PageModel<MainText> typePage(Integer pageRequest,int pageSize,int type) {
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
		help.setType(type);
		sqlSession=sqlSessionFactory.openSession();
		List<MainText> MainTexts = sqlSession.selectList("cn.com.gsli.model.maintext.MainTextMapper.typePage",help);
		sqlSession.commit();
		sqlSession.close();
		pageModel.setData(MainTexts);
		return pageModel;
	}
	
	
	
}
