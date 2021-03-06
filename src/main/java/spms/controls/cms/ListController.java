package spms.controls.cms;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spms.dao.BannerDao;
import spms.dao.MovieDao;

//@RequestParam 적용
@Controller
public class ListController {
	BannerDao bannerDao;

	@Autowired
	public ListController setBannerDao(BannerDao bannerDao) {
		this.bannerDao = bannerDao;
		return this;
	}

	@RequestMapping("/cms/list.do")
	public String execute(Map<String, Object> model) throws Exception {
		//HashMap<String, Object> paramMap = new HashMap<String, Object>();
		//paramMap.put("view", "all");
		//model.put("banners", bannerDao.selectList(paramMap));
		return "/cms/ListForm.jsp";
	}
}
