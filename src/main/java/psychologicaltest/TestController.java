package psychologicaltest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;




@Controller
public class TestController {	
	
	@GetMapping("/depressiontest")
	public String depressiontest() {
		return "test/depressiontest";
	}
	
	@GetMapping("/stresstest")
	public String stresstest() {
		return "test/stresstest";
	}
	
	@GetMapping("/relationshiptest")
	public String relationshiptest() {
		return "test/relationshiptest";
	}
	
	
	
	
	
}
