package com.voc.toolkit;

/**
 * 分页工具类（静态方法，供外部直接调用）
 * Created with IntelliJ IDEA.
 * Author:  WuYujie
 * Email:  coffee377@dingtalk.com
 * Time:  2016/12/16 21:08
 */
public class PageUtils {
    /**
     * 计算总页数
     *
     * @param totalSize 总记录数
     * @param pageSize  每页记录数
     * @return 总页数
     */
    public static int countTotalPage(final int totalSize, final int pageSize) {
        int num = totalSize / pageSize;
        if (totalSize % pageSize == 0) {
            return num;
        } else {
            return num + 1;
        }
    }

    /**
     * 计算当前页开始记录的位置
     *
     * @param pageSize 每页记录数条数
     * @return Integer
     */
    public static int countOffset(final int pageNumber, final int pageSize) {
        return pageSize * (pageNumber - 1);
    }

    /**
     * 计算当前页,若为0或者请求的URL中没有"?page=",则用1代替,若 page > totalPage 则返回 totalPage
     *
     * @param page      传入的参数(可能为空, 即0, 则返回1)
     * @param totalSize 总记录数
     * @param pageSize  每页记录数
     * @return 当前页
     */
    public static int countCurrentPage(final int page, final int totalSize, final int pageSize) {
        int totalPage = PageUtils.countTotalPage(totalSize, pageSize);
        if (page == 0) {
            return 1;
        } else if (page > totalPage) {
            return totalPage;
        }
        return page;
    }
}
