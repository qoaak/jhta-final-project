package kr.co.hangsho.privatedeal.web;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.categories.vo.SmallCategory;
import kr.co.hangsho.codes.vo.Code;
import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.privatedeal.service.PrivatedealService;
import kr.co.hangsho.privatedeal.vo.Privatedeal;
import kr.co.hangsho.privatedeal.web.form.PrivatedealForm;

@Controller
public class FormController {
	
	@Autowired
	PrivatedealService privatedealService;
	
	@RequestMapping("/meronaform.do")
	public String meronaform() {
		return "/privatedeal/merona/form";
	}
	
	@RequestMapping("/usedform.do")
	public String usedform() {
		return "/privatedeal/used/form";
	}	
	
	@RequestMapping(value = "/insertMerona.do", method = RequestMethod.POST)
	public String insertMerona(PrivatedealForm privatedealForm, HttpSession httpSession) {
		
		Privatedeal privatedeal = new Privatedeal();
		BeanUtils.copyProperties(privatedealForm, privatedeal);
		
		SmallCategory smallCategory = new SmallCategory();
		smallCategory.setId(privatedealForm.getSmallcategory());
		privatedeal.setSmallcategory(smallCategory);
		
		Customer customer = (Customer) httpSession.getAttribute("LOGIN_USER");
		privatedeal.setCustomer(customer);
		
		Code division = new Code();
		division.setId(privatedealForm.getDivision());
		privatedeal.setDivision(division);
		
		Code type = new Code();
		type.setId("M");
		privatedeal.setType(type);
		
		privatedealService.addPDBoard(privatedeal);		
		
		return "redirect:/merona/index.do";
	}
	
	@RequestMapping(value = "/insertUsed.do", method = RequestMethod.POST)
	public String insertUsed(String editor) {
		
		return "redirect:/used/index.do";
	}

	// 다중파일업로드
	@RequestMapping(value = "/file_uploader_html5.do", method = RequestMethod.POST)
	@ResponseBody
	public String multiplePhotoUpload(HttpServletRequest request) {
		// 파일정보
		StringBuffer sb = new StringBuffer();
		try {
			// 파일명을 받는다 - 일반 원본파일명
			String oldName = request.getHeader("file-name");
			// 파일 기본경로 _ 상세경로
			String filePath = "C:/spring_workspace/workspace/hangsho/src/main/webapp/resources/photoUpload/";
			String saveName = sb.append(new SimpleDateFormat("yyyyMMddHHmmss").format(System.currentTimeMillis()))
								.append(UUID.randomUUID().toString())
								.append(oldName.substring(oldName.lastIndexOf("."))).toString();
			InputStream is = request.getInputStream();
			OutputStream os = new FileOutputStream(filePath + saveName);
			int numRead;
			byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
			while ((numRead = is.read(b, 0, b.length)) != -1) {
				os.write(b, 0, numRead);
			}
			os.flush();
			os.close();
			// 정보 출력
			sb = new StringBuffer();
			sb.append("&bNewLine=true")
			  .append("&sFileName=").append(oldName)
			  .append("&sFileURL=").append("http://localhost/resources/photoUpload/").append(saveName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sb.toString();
	}
}