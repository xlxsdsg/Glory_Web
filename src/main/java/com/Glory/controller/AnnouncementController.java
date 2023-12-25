package com.Glory.controller;

import com.Glory.po.Announcement;
import com.Glory.service.impl.AnnouncementServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AnnouncementController {
    @Autowired
    private AnnouncementServiceImpl announcementService;

    @RequestMapping("/AnnouncementControl")
    public ModelAndView tpAnnouncementControl(){
        ModelAndView mav = new ModelAndView("AnnouncementControl");
        List<Announcement> announcementList = announcementService.findAllAnnouncement();
        mav.addObject("AnnouncementList", announcementList);
        return mav;
    }

    @PostMapping("/sendAnnouncement")
    public String sendAnnouncement(Announcement announcement){
        announcementService.sendAnnouncement(announcement);
        return "redirect:AnnouncementControl";
    }

    @GetMapping("/hideAnnouncement")
    public String hiddenAnnouncement(@RequestParam("id")Integer id, Model model){
        announcementService.hiddenAnnouncement(id);
        model.addAttribute("AnnouncementList", announcementService.findAllAnnouncement());
        return "redirect:AnnouncementControl";
    }

    @GetMapping("/deleteAnnouncement")
    public String deleteAnnouncement(@RequestParam("id")Integer id, Model model){
        announcementService.deleteAnnouncement(id);
        model.addAttribute("AnnouncementList", announcementService.findAllAnnouncement());
        return "redirect:AnnouncementControl";
    }

    @GetMapping("/showAnnouncement")
    public String showAnnouncement(@RequestParam("id")Integer id, Model model){
        announcementService.showAnnouncement(id);
        model.addAttribute("AnnouncementList", announcementService.findAllAnnouncement());
        return "redirect:AnnouncementControl";
    }
}
