package psychologicaltest;

import java.util.List;

public interface TestService {
	// 자가 진단 테스트 결과값 기능
	public List<TestDTO> getStressResult(String result);


	
}
