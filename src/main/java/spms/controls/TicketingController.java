package spms.controls;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spms.dao.MovieDao;

//@RequestParam 적용
@Controller
public class TicketingController {
	MovieDao movieDao;

	@Autowired
	public TicketingController setMemberDao(MovieDao movieDao) {
		this.movieDao = movieDao;
		return this;
	}

	@RequestMapping("/ticketing.do")
	public String execute(Map<String, Object> model) throws Exception {
		//HashMap<String, Object> paramMap = new HashMap<String, Object>();
		//paramMap.put("view", view);
		//model.put("movies", movieDao.selectList(paramMap));
		return "/cinema/page/WaringForm.jsp";
	}
}