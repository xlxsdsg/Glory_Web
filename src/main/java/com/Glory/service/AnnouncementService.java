package com.Glory.service;

import com.Glory.po.Announcement;

import java.util.List;

public interface AnnouncementService{
    public List<Announcement> findAllAnnouncement();

    List<Announcement> findExistAnnouncement();

    public void sendAnnouncement(Announcement announcement);
    public void deleteAnnouncement(Integer id);
    public void hiddenAnnouncement(Integer id);
    public void showAnnouncement(Integer id);
}
