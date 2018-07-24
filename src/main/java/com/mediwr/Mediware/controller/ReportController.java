package com.mediwr.Mediware.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mediwr.Mediware.model.PhysicalsVO;
import com.sun.scenario.effect.Blend.Mode;

@Controller
@RequestMapping("/reports")
public class ReportController {
	
	private static Map<String, PhysicalsVO> physicalsMap = new HashMap<>();
	
	@RequestMapping(method=RequestMethod.GET, value="/addPhysicals")
	public ModelAndView addPhysicals(@RequestParam("userName") String userName, ModelMap model) {
		System.out.println("addPhysicals for..." + userName);
		PhysicalsVO physicals = new PhysicalsVO();
		model.addAttribute("mode", "REPORT_WRITE");
		model.addAttribute("userName", userName);
		model.addAttribute("physicals", physicals);
		return new ModelAndView("report/addPhysicalsReport", model);
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/savePhysicals")
	public ModelAndView savePhysicals(@ModelAttribute("physicals") PhysicalsVO physicals, ModelMap model) {
		physicalsMap.put(physicals.getUserName(), physicals);
		System.out.println("Added physicals for - " + physicals.getUserName() + ". " + "Number of physicals available !" + physicalsMap.size());
		model.addAttribute("physicals", physicalsMap.get(physicals.getUserName()));
		model.addAttribute("mode", "REPORT_READ");
		model.addAttribute("userAction", "CREATE");
		return new ModelAndView("report/addPhysicalsReport", model);
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/retrieveReport")
	public ModelAndView retreivePhysicals(@RequestParam("userName") String userName, ModelMap model) {
		System.out.println("retreivePhysicals...");
		if(null != physicalsMap.get(userName)) System.out.println("User's physical report found...");
		model.addAttribute("physicals", physicalsMap.get(userName));
		model.addAttribute("mode", "REPORT_UPDATE");
		return new ModelAndView("report/addPhysicalsReport", model);
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/updatePhysicals")
	public ModelAndView udpatePhysicals(@ModelAttribute("physicals") PhysicalsVO physicals, ModelMap model) {
		physicalsMap.put(physicals.getUserName(), physicals);
		System.out.println("Updated physicals for - " + physicals.getUserName() + ". " + "Number of physicals available !" + physicalsMap.size());
		model.addAttribute("physicals", physicalsMap.get(physicals.getUserName()));
		model.addAttribute("mode", "REPORT_READ");
		model.addAttribute("userAction", "UPDATE");
		return new ModelAndView("report/addPhysicalsReport", model);
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/deleteReport")
	public String deletePhysicals(@RequestParam("userName") String userName, ModelMap model) {
		System.out.println("deletePhysicals...");
		if(null != physicalsMap.get(userName)) {
			System.out.println("User's physical report found. Deleting...");
			physicalsMap.remove(userName);
		}
		return "redirect:/";
	}

}
