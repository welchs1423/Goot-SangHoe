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
		
		/*
		 * 애초에 에러가 나고있습니다
		 * 왜 에러가 나고 있을까요? 에러내용은 읽어보셨나요
		 * 지금 프로젝트에 보이는 에러말씀하시는건가요
		 * 이게 제가 중간에 pom.xml에 디펜던시 몇개 추가하고 에러가 생겼었는데
		 * 그이후에도 home.jsp는 불러와지길래 사실 안읽어보긴 했어요 
		 * 그런데 이거저거 건들다보니 이제는 아예안되길래 강사님 한테 여쭤보려고 했었어요
		 * 
		 * 저도 정확히 무슨 문젠지는 확인해봐야 되겠지만
		 * 한번 살펴볼게요
		 * 우리 jdk 문제일겁니다.
		 * 
		 * 끝헐 대박
		 * 
		 * pom.xml에 컴파일러 버전이 1.6으로 잡혀있었어요
		 * 그래서 jdk는 11인데 컴파일러가 1.6이라서 충돌 났었고
		 * 에러내용에 적혀져있었습니다
		 * 앞으로도 에러가 나면 내용을 꼭 살펴보고 수정하면 잘 잡힐거에요
		 * 감사합니다넵
		 */
		 
		/*
		 * 자 우선 에러를 볼 곳부터 확인해보죠 처음 왼쪽 에러 페이지에 예외 라고 써져있는곳 그 다음에 아래 근본 원인!! 여기가 핵심이죠 무슨
		 * 예외가 발생했나요 org.choonsik.service.ProductService.getListwhiskey() 이부분을 불러오지 못한다고
		 * 나와있고 그 이유로 "this.service" 이부분이 null 이라고 하는데..model
		 * 
		 * 우선 에러를 보는건 첫 번째로 에러 이름! 코드 이름 확인 -> 지금 널포인터 익셉션이죠? 그럼 어떤 게 널인가 보니 service가
		 * 널이라고 하네요 그럼 내가 가지고있는 서비스가 왜 널일까? 저거 왜 쓰는지는 아시죠? ㅎㅎ; 잠시만요
		 * 
		 * 서비스임플쪽에서 매퍼는 처리해놓으시고 왜 여기선 서비스 안해놓으셧대~
		 * 
		 * 저게 무슨 뜻인지는 아시나요 죄송해요 잘 모르겠어요
		 * 
		 * 흠..우선 사용하면 제 생각엔 에러는 안날거같은데 끝나고 DI 공부 더 하시길 바랄게요 실행시켜보세
		 * 
		 * 에러 ㅋㅋ 이것들 가리고요 
		 * 에
		 * 된건가요? 에러는 없어졌네요 감사합니다 이제 다음단계로 넘어가도 될것같아요 네 
		 * 저 부분은 인터넷에서 DI 찾아서 공부하시면 도움 될 것 같네요
		 * 고생하세요감사합니다
		 */
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
