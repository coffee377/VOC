package com.voc.beans;

import java.util.List;

/**
 * 分页JavaBean(适用与 EasyUI)
 * Created with IntelliJ IDEA.
 * Author:  Wu Yujie
 * Email:  coffee377@dingtalk.com
 * Time:  2016/12/15 17:13
 * @param <E> 实体对象
 */
public class PageBean<E>{
    /*当前页的记录列表*/
    private List<E> rows;
    /*总记录数*/
    private int total;
    /*总页数*/
    private int pages;
    /*当前页码*/
    private int pageNumber;
    /*每页记录数*/
    private int pageSize;

    private boolean isFirstPage;
    private boolean isLastPage;
    private boolean hasPreviousPage;
    private boolean hasNextPage;


    public List<E> getRows() {
        return rows;
    }

    public void setRows(List<E> rows) {
        this.rows = rows;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    /**
     * 是否是第一页
     *
     * @return Boolean
     */
    public boolean isFirstPage() {
        return pageNumber == 1;
    }

    /**
     * 是否是最后一页
     *
     * @return Boolean
     */
    public boolean isLastPage() {
        return pageNumber == pages;
    }

    /**
     * 是否有上一页
     *
     * @return Boolean
     */
    public boolean isHasPreviousPage() {
        return pageNumber != 1;
    }

    /**
     * 是否有下一页
     *
     * @return Boolean
     */
    public boolean isHasNextPage() {
        return pageNumber != pages;
    }

    /**
     * 初始化分页信息
     */
    public void init() {
        isFirstPage = isFirstPage();
        isLastPage = isLastPage();
        hasPreviousPage = isHasPreviousPage();
        try {
            hasNextPage = isHasNextPage();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public PageBean() {
    }

    public PageBean(List<E> rows, int total, int pages, int pageNumber, int pageSize) {
        this.rows = rows;
        this.total = total;
        this.pages = pages;
        this.pageNumber = pageNumber;
        this.pageSize = pageSize;
        this.init();
    }


    @Override
    public String toString() {
        return "PageBean{" +
                "rows=" + rows +
                ", total=" + total +
                ", pages=" + pages +
                ", pageNumber=" + pageNumber +
                ", pageSize=" + pageSize +
                ", isFirstPage=" + isFirstPage +
                ", isLastPage=" + isLastPage +
                ", hasPreviousPage=" + hasPreviousPage +
                ", hasNextPage=" + hasNextPage +
                '}';
    }

}
