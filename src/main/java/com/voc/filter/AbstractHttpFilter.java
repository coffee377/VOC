package com.voc.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;

/**
 * 自定义 AbstractHttpFilter 实现自 Filter 接口
 * Created with IntelliJ IDEA.
 * Author:  WuYujie
 * Email:  coffee377@dingtalk.com
 * Time:  2016/12/25 11:13
 */
public abstract class AbstractHttpFilter implements Filter {
    /**
     * 保存 FilterConfig 对象
     */
    private FilterConfig filterConfig;

    /**
     * 获取配置文件的参数集
     *
     * @return HashMap
     */
    public HashMap<String, String> getParams() {
        HashMap<String, String> params = new HashMap<>();
        Enumeration<String> names = filterConfig.getInitParameterNames();
        String k, v;
        while (names.hasMoreElements()) {
            k = names.nextElement();
            v = filterConfig.getInitParameter(k);
            params.put(k, v);
        }
        return params;
    }

    /**
     * 获取 FilterConfig 对象
     *
     * @return FilterConfig 过滤配置文件
     */
    public FilterConfig getFilterConfig() {
        return filterConfig;
    }

    /**
     * 不建议子类直接覆盖
     *
     * @param filterConfig 配置文件对象
     * @throws ServletException Servlet异常
     */
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig = filterConfig;
        this.init();
    }

    /**
     * 子类继承的初始化方法,可以通过 getFilterConfig（） 获取 FilterConfig 对象
     */
    protected void init() {
    }

    /**
     * 原生 doFilter 方法
     *
     * @param servletRequest  请求
     * @param servletResponse 响应
     * @param filterChain     过滤链
     * @throws IOException      IO异常
     * @throws ServletException Servlet异常
     */
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        this.doFilter(httpServletRequest, httpServletResponse, filterChain);
    }

    /**
     * 为 Http 请求自定义的抽象方法，子类必须实现
     *
     * @param request  请求
     * @param response 响应
     * @param chain    g过虑链
     * @throws IOException      IO异常
     * @throws ServletException Servlet异常
     */
    public abstract void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
            throws IOException, ServletException;

    @Override
    public void destroy() {
    }
}
