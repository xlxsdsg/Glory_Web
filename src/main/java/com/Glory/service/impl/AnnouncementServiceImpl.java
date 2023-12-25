package com.Glory.service.impl;

import com.Glory.dao.AnnouncementDao;
import com.Glory.po.Announcement;
import com.Glory.service.AnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional
public class AnnouncementServiceImpl implements AnnouncementService {
    @Autowired
    private AnnouncementDao announcementDao;

    @Override
    public List<Announcement> findAllAnnouncement() {
        List<Announcement> list = announcementDao.findAllAnnouncement();
        return list;
    }

    @Override
    public List<Announcement> findExistAnnouncement() {
        List<Announcement> list = announcementDao.findExistAnnouncement();
        return list;
    }

    @Override
    public void sendAnnouncement(Announcement announcement) {
        Date date = new Date();
        java.sql.Date time = new java.sql.Date(date.getTime());
        announcement.setTime(time);
        this.announcementDao.sendAnnouncement(announcement);
    }

    @Override
    public void deleteAnnouncement(Integer id) {
        this.announcementDao.deleteAnnouncement(id);
        System.out.println("删除公告成功");
    }

    @Override
    public void hiddenAnnouncement(Integer id) {
        this.announcementDao.hiddenAnnouncement(id);
        System.out.println("隐藏公告成功");
    }

    @Override
    public void showAnnouncement(Integer id) {
        this.announcementDao.showAnnouncement(id);
        System.out.println("显示公告成功");
    }

}
