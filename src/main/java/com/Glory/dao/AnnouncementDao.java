package com.Glory.dao;

import com.Glory.po.Announcement;

import java.util.List;

public interface AnnouncementDao {
    public List<Announcement> findAllAnnouncement();
    public List<Announcement> findExistAnnouncement();
    public void sendAnnouncement(Announcement announcement);
    public void deleteAnnouncement(Integer id);
    public void hiddenAnnouncement(Integer id);
    public void showAnnouncement(Integer id);
}
