package org.choonsik.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.choonsik.domain.CartVO;
import org.choonsik.domain.MemberVO;
import org.choonsik.domain.purchaseInfo;
import org.choonsik.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
/* @RequestMapping("/member/*") */
public class MemberController {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService service;
	
	HttpServletResponse response;
	
	@GetMapping("/registerCheck")
	public void registerCheck(){
		log.info("registercheck...");
	}
	
	@GetMapping("/registerForm")
	public void registerForm() {
		log.info("getform");
	}
	
	@PostMapping("/registerForm")
	public String registerForm(MemberVO member, RedirectAttributes rttr,Model model) {
		
		log.info("registerForm..." + member);
		
		int result = service.registerForm(member);
		
		if(result > 0) {
			rttr.addFlashAttribute("result", result);
		}
		return "redirect:/list";
	}
	
	@GetMapping("/purchase")
	public void purchase(Model model, @RequestParam("pno") long pno, purchaseInfo pinfo) {
		log.info("purchase.." + pno + "purchaseInfo" + pinfo);
		model.addAttribute("purchaseProduct", service.purchase(pno));
		model.addAttribute("pinfo",pinfo);
	}
	
	@PostMapping("/purchase")
	public String purchase() throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		out.println("<script language='javascript'>");
		out.println("alert('구매가 완료 되었습니다.'); location.href='/list';");
		out.println("</script>");

		out.flush();
		return "redirect:/list"; 
	}
	
	@PostMapping("/cartInsert")
	public String cartInsert(Model model,@RequestParam("pno") long pno, RedirectAttributes rttr,
			CartVO cart) {
		
		log.info("cartInsert..." + cart);
		
		int result = service.cartInsert(cart);
		
		if(result > 0) {
			rttr.addFlashAttribute("result", result);
		}		
		return "redirect:/get?pno=" + pno;
	}
	
	@GetMapping("/cart")
	public void cart(Model model, @RequestParam("mno") long mno) {
		log.info("getCartList..." + mno);
		model.addAttribute("cartList",service.getCartList(mno));
		
		int total = service.getTotal(mno);
		model.addAttribute("cartTotal",total);
	}
	
	
	 @GetMapping("/cartRemove") 
	 public String cartRemove(@RequestParam("cno") long cno, RedirectAttributes rttr,
			 				@RequestParam("mno") long mno) {
		 log.info("cartRemove..." + cno);
	  
	  if(service.cartRemove(cno)) { 
		  rttr.addFlashAttribute("result", "success"); 
		  }
	  
	  return "redirect:/cart?mno=" + mno; 
	  }
	 
}
