package org.choonsik.controller;

import org.choonsik.domain.Criteria;
import org.choonsik.domain.PageDTO;
import org.choonsik.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
/* @RequestMapping("/product/*") */
@Log4j
public class ProductController {
	
	@Setter(onMethod_ = @Autowired)
	private ProductService service;
	
	@RequestMapping("/list")
	public void list(Model model) {
		log.info("list......");
		model.addAttribute("listwhiskey", service.getListwhiskey());
		model.addAttribute("listwine", service.getListwine()); 
		model.addAttribute("listbeer", service.getListbeer());
		model.addAttribute("listbrandy", service.getListbrandy());
		model.addAttribute("listliquor", service.getListliquor());
	}
	
	@GetMapping("/categorylist")
	public void categorylist(Model model, Criteria cri, @RequestParam("pcategory") long pcategory) {
		log.info("Categorylist..." + cri);
		model.addAttribute("Categorywine", service.getCategorywine(cri));
		model.addAttribute("checkCategory", service.checkCategory(pcategory));
		
		int total = service.getTotal(pcategory);
		model.addAttribute("winepage", new PageDTO(cri, total));
	}
	
	@GetMapping("/brandyList")
	public void brandyList(Model model, Criteria cri, @RequestParam("pcategory") long pcategory) {
		log.info("brandyList...");
		model.addAttribute("brandyList",service.getbrandyList(cri));
		int total = service.getTotal(pcategory);
		model.addAttribute("brandycri", new PageDTO(cri, total));
	}
	
	@GetMapping("/liquorList")
	public void liquorList(Model model, Criteria cri, @RequestParam("pcategory") long pcategory) {
		log.info("liquorList...");
		model.addAttribute("liquorList",service.getliquorList(cri));
		int total = service.getTotal(pcategory);
		model.addAttribute("liquorcri", new PageDTO(cri, total));
	}
	
	@GetMapping("/vodkaList")
	public void vodkaList(Model model, Criteria cri, @RequestParam("pcategory") long pcategory) {
		log.info("brandyList...");
		model.addAttribute("vodkaList",service.getvodkaList(cri));
		int total = service.getTotal(pcategory);
		model.addAttribute("vodkacri", new PageDTO(cri, total));
	}
	
	
	@GetMapping("/get")
	public void get(Model model, @RequestParam("pno") long pno,
						Criteria cri) {
		log.info("get.." + pno);
		model.addAttribute("productget", service.get(pno));
		model.addAttribute("cri", cri);
	}

	
	@GetMapping("/cateorglist") 
	public void cateorglist(Model model, Criteria cri,@RequestParam("pcategory") long pcategory) {
		log.info("cateorglist.." + cri);
		model.addAttribute("cateorglist", service.getcateorglist(cri));
		model.addAttribute("checkCategory", service.checkCategory(pcategory));
		
		int totalcateorg = service.getTotalcateorg(cri);
		model.addAttribute("cateorgpage", new PageDTO(cri, totalcateorg));
	}
	 
	

}
