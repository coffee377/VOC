package com.voc.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 每次放问/admin/ 目录下都会进入拦截器，检查登录session是否存在，如果不存在跳转至登录页。
 * Created with IntelliJ IDEA.
 * Author:  Wu Yujie
 * Email:  coffee377@dingtalk.com
 * Time:  2017/03/12 20:03
 */
public class AdminInterceptor implements HandlerInterceptor {
    private final String USER_SESSION = "USER";

    /*拦截前处理*/
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        Object sessionObj = request.getSession().getAttribute(USER_SESSION);
        if (sessionObj != null) {
            return true;
        }
        /*若为登录，这重定向到后台登录界面*/
        response.sendRedirect(request.getContextPath()+"/admin/login.html");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView mv) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {

    }
}
