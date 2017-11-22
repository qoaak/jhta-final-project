package kr.co.hangsho.privatedeal.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.privatedeal.service.PrivatedealService;
import kr.co.hangsho.privatedeal.vo.Comment;
import kr.co.hangsho.privatedeal.vo.Privatedeal;
import kr.co.hangsho.privatedeal.web.form.CommentForm;

@Controller
public class CommentAjaxController {
	
	@Autowired
	PrivatedealService privatedealService;
	
	@RequestMapping("/addComment.do")
	@ResponseBody
	public Map<String, Object> addComment(CommentForm commentForm, HttpSession httpSession) {
		
		Comment comment = new Comment();
		comment.setComment(commentForm.getComment());
		
		Privatedeal privatedeal = new Privatedeal();
		privatedeal.setId(commentForm.getBoardNo());
		comment.setBoardId(privatedeal);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		Map<String, Object> loginInfo = (Map) httpSession.getAttribute("LOGIN_INFO");
		if (loginInfo == null) {
			map.put("success", false);
			map.put("cause", "login");
		} else {		
			Customer customer = new Customer();
			if("CUSTOMER".equals(loginInfo.get("USER_TYPE"))) {
				customer = (Customer) loginInfo.get("LOGIN_USER");
			}
			comment.setCustomer(customer);		
			comment = privatedealService.addNewComment(comment);
			map.put("success", true);
			map.put("comment", comment);		
		}
		
		return map;
	}
	
	@RequestMapping("/addReply.do")
	@ResponseBody
	public Map<String, Object> addReply(CommentForm commentForm, HttpSession httpSession) {
		
		Comment comment = new Comment();
		comment.setComment(commentForm.getComment());
		
		Privatedeal privatedeal = new Privatedeal();
		privatedeal.setId(commentForm.getBoardNo());
		comment.setBoardId(privatedeal);
		
		Comment repliedId = new Comment();
		repliedId.setId(commentForm.getRno());
		comment.setRepliedId(repliedId);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		Map<String, Object> loginInfo = (Map) httpSession.getAttribute("LOGIN_INFO");
		if (loginInfo == null) {
			map.put("success", false);
			map.put("cause", "login");
		} else {
			Customer customer = new Customer();
			if("CUSTOMER".equals(loginInfo.get("USER_TYPE"))) {
				customer = (Customer) loginInfo.get("LOGIN_USER");
			}
			comment.setCustomer(customer);
			comment = privatedealService.addNewReply(comment);
			map.put("success", true);
			map.put("comment", comment);
		}
		
		return map;
	}
	
	@RequestMapping("/getCommentlist.do")
	@ResponseBody
	public List<Comment> getComments(int boardNo) {
		
		return privatedealService.getCommentsByBoardNo(boardNo);
	}
}
