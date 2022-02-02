package org.choonsik.controller;


import java.util.List;

import org.choonsik.domain.BoardVO;
import org.choonsik.domain.Criteria;
import org.choonsik.domain.NoticeVO;
import org.choonsik.domain.PageDTO;
import org.choonsik.domain.ReplyVO;
import org.choonsik.service.BoardService;
import org.choonsik.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/board/*")
public class BoardController {
	
	@Setter(onMethod_ = @Autowired)
	private BoardService service;
	
	@Setter(onMethod_ = @Autowired)
	private ReplyService replyservice;
	
	@GetMapping("/inquiry")
	public void inquirylist(Model model, Criteria cri) {
		log.info("inquiry..." + cri);
		model.addAttribute("inquirylist", service.getinquirylist(cri));
		
		int totalinquiry = service.getTotalinquiry();
		model.addAttribute("inquirymaker", new PageDTO(cri, totalinquiry));
	}
	
	@GetMapping("/notice")
	public void noticelist(Model model, Criteria cri) {
		log.info("notice..." + cri);
		model.addAttribute("noticelist", service.getnoticelist(cri));
		
		int totalnotice = service.getTotalnotice();
		model.addAttribute("noticemaker", new PageDTO(cri, totalnotice));
	}
	
	@GetMapping({"/getnotice", "/modifynotice"})
	public void getnotice(Model model, @RequestParam("nno") long nno,
			Criteria cri) {
		log.info("getnotice or modifynotice" + nno);
		
		service.noticeviewcnt(nno);
		
		model.addAttribute("getnotice",service.getnotice(nno));
		model.addAttribute("cri", cri);
	}
	
	@GetMapping({"/getinquiry", "/modifyinquiry"})
	public void getinquiry(Model model, @RequestParam("bno") long bno,
			Criteria cri) {
		log.info("getinquiry..." + bno);
		
		service.boardviewcnt(bno);
		service.updateReplyCnt(bno);
		
		model.addAttribute("getinquiry",service.getinquiry(bno));	
		model.addAttribute("cri", cri);
		
		List<ReplyVO> replyList = replyservice.getList(bno, cri);
		model.addAttribute("replyList", replyList);
	}
	
	@GetMapping({"/updateReply","/getReply"})
	public void updateReply(Model model, @RequestParam("rno") long rno,
			Criteria cri) {
		log.info("getReply or updateReply" + rno);
		model.addAttribute("getReply", replyservice.getReply(rno));
		model.addAttribute("cri",cri);
	}
	
	
	@GetMapping("/nregister")
	public void nregister(Criteria cri, Model model) {
		model.addAttribute("cri", cri);
	}
	@PostMapping("/nregister")
	public String nregister(NoticeVO notice, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("noticeregister..." + notice);
		
		int result = service.nregister(notice);
		
		if(result>0) {
			rttr.addFlashAttribute("result",result);
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/board/notice?amount=20&pageNum=1";
	}
	
	@GetMapping("/iregister")
	public void iregister(Criteria cri, Model model) {
		model.addAttribute("cri", cri);
	}
	@PostMapping("/iregister")
	public String iregister(BoardVO board, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("inquiryregister..." + board);
		
		int result = service.iregister(board);
		
		if(result>0) {
			rttr.addFlashAttribute("result",result);
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount" , cri.getAmount());
		return "redirect:/board/inquiry?amount=20&pageNum=1";
	}
	
	@PostMapping("/create")
	public String create(ReplyVO vo, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("createreply" + vo);
		
		int result = replyservice.create(vo);
		
		if(result>0) {
			rttr.addFlashAttribute("result",result);
		}
		
		int bno = (int) vo.getBno();
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("mname", vo.getMname());
		rttr.addAttribute("rtext", vo.getRtext());
		
		return "redirect:/board/getinquiry?amount=20&bno=" + bno;
		
	}
	
	@PostMapping("/modifynotice")
	public String modifynotice(NoticeVO notice, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("modifynotice.." + notice);
		
		if(service.modifynotice(notice)) {
			rttr.addFlashAttribute("result","success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/board/notice?pageNum=1&amount=20";
	}
	
	@PostMapping("/updateReply")
	public String updateReply(ReplyVO vo, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("updateReply... " + vo);
		
		if(replyservice.updateReply(vo)) {
			rttr.addAttribute("result", "success");
		}
		
		int bno = (int) vo.getBno();
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/board/getinquiry?amount=20&bno=" + bno;
	}
	
	@PostMapping("/modifyinquiry")
	public String modifyinquiry(BoardVO board, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("modifyinquiry.." + board);
		
		if(service.modifyinqruiy(board)) {
			rttr.addFlashAttribute("result","success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/board/inquiry?pageNum=1&amount=20";
	}
	
	@PostMapping("/removenotice")
	public String removenotice(@RequestParam("nno") long nno, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("removenotice ... " + nno);
		
		if(service.removenotice(nno)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum",cri.getPageNum());
		rttr.addAttribute("amount",cri.getAmount());
		return "redirect:/board/notice?pageNum=1&amount=20";
	}
	
	@PostMapping("/removeinquiry")
	public String removeinquiry(@RequestParam("bno") long bno, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("removeinquiry ... " + bno);
		
		if(service.removeinquiry(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/inquiry?pageNum=1&amount=20";
	}
	
	@GetMapping("/deleteReply")
	public String deletereply(@RequestParam("rno") long rno, RedirectAttributes rttr,
			@ModelAttribute("cri") Criteria cri) {
		log.info("deleteReply ... " + rno);
		
		
		
		if(replyservice.deleteReply(rno)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum" , cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/board/inquiry?amount=20&pageNum=1";
	}
	
	
	
}
