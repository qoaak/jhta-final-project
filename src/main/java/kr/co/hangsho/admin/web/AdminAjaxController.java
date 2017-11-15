package kr.co.hangsho.admin.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.charts.mappers.ChartMapper;

@Controller
@RequestMapping("/admin")
public class AdminAjaxController {

	@Autowired
	ChartMapper chartMapper;
	
}
