package com.voc.toolkit;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * Author:  Wu Yujie
 * Email:  coffee377@dingtalk.com
 * Time:  2017/01/16 18:14
 */
public class TemplateUtils {
    // 负责管理FreeMarker模板的Configuration实例
    private static Configuration cfg = null;
    private HttpServletRequest request;

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public TemplateUtils(HttpServletRequest request) {
        this.request = request;
        // 创建一个FreeMarker实例
        cfg = new Configuration(Configuration.getVersion());
        cfg.setDefaultEncoding("UTF-8");
        // 指定FreeMarker模板文件的默认位置
        cfg.setServletContextForTemplateLoading(this.request.getServletContext(), "/views/ftl/");
    }

    public String getWebAppPath() {
        return request.getScheme() + "://"
                + request.getLocalAddr() + ":"
                + request.getLocalPort() + request.getContextPath();
    }


    public void OutTemplate(Map<String, Object> data, OutputStream out,String templateName) {
        // 定义模板文件
        Template template;
        try {
            //获取模板文件
            template = cfg.getTemplate(templateName);

            Writer writer = new OutputStreamWriter(out);
            // 合并数据模型和模板，并将结果输出到out中
            try {
                // 往模板里写数据
                template.process(data, writer);
            } catch (TemplateException e) {
                e.printStackTrace();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
