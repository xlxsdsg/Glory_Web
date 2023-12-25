package com.Glory.po;

import java.sql.Date;

public class Announcement {
    private Integer id;
    private String content;
    private Integer exist;
    private String title;
    private Date time;

    public Announcement() {
    }

    public Announcement(Integer id, String content, Integer exist, String title, Date time) {
        this.id = id;
        this.content = content;
        this.exist = exist;
        this.title = title;
        this.time = time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getExist() {
        return exist;
    }

    public void setExist(Integer exist) {
        this.exist = exist;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Announcement{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", exist=" + exist +
                ", title='" + title + '\'' +
                ", time=" + time +
                '}';
    }
}
