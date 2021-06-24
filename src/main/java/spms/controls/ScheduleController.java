package spms.controls;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spms.dao.MovieDao;

@Controller
public class ScheduleController {
	MovieDao movieDao;

	@Autowired
	public ScheduleController setMovieDao(MovieDao movieDao) {
		this.movieDao = movieDao;
		return this;
	}

	@RequestMapping("/schedule.do")
	public String execute(Map<String, Object> model) throws Exception {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("view","reserv");
		int[] a = new int[] {0,1,2,3,4,5,6,7,8,9};
		model.put("dates", a);
		model.put("movies", movieDao.selectList(paramMap));
		return "/cinema/page/ScheduleForm.jsp";
	}
}
