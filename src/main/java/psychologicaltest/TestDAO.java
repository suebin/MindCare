package psychologicaltest;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("testdao")
public class TestDAO {
	@Autowired
	SqlSession session;
	
	public List<TestDTO> getStressResult(String result) {
		return session.selectList("getStressResult", result);
	}

}
