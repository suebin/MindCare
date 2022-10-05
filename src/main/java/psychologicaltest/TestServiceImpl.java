package psychologicaltest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service("testservice")
public class TestServiceImpl implements TestService {
	@Autowired
	TestDAO dao;
	
	@Override
	public List<TestDTO> getStressResult(String result) {
		return dao.getStressResult(result);
	}
}
