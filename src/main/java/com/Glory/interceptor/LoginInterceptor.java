package com.Glory.interceptor;

import com.Glory.po.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("调用拦截器");
        String url = request.getRequestURI();
        if (url.indexOf("/login")>0){
            System.out.println("用户已登录,可放行");
            return true;
        }
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("USER_SESSION");
        if (user!=null){
            System.out.println("用户会话仍存在，可放行");
            return true;
        }
        /*非法越墙访问则重定向至登录页面*/
        System.out.println("用户未登录，不可放行");
        request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp").forward(request,response);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
