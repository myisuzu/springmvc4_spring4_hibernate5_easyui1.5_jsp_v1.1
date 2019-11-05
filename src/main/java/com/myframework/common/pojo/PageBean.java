package com.myframework.common.pojo;

import java.util.List;

/**
 * 标准分页信息封装实体
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class PageBean<T> {

	/**
	 * 当前页
	 */
	private int pageNo;
	
	/**
	 * 每页记录数
	 */
	private int pageSize;
	
	/**
	 * 上一页
	 */
	private int prevPage;
	
	/**
	 * 下一页
	 */
	private int nextPage;
	
    /**
     * 总页数/尾页
     */
    private int pages;

	/**
	 * 总记录数
	 */
	private int total;
	
	/**
	 * 结果集
	 */
	private List<T> list;	
	
	/**
	 * 导航页码数
	 */
    private int navPages;
	
    /**
     * 所有导航页号
     */
    private int[] navPageNums;	

	/**
	 * 带参构造函数
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param total 总记录数
	 * @param list 结果集
	 */
	public PageBean(int pageNo, int pageSize, int total, List<T> list) {
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.total = total;
		this.list = list;
		this.navPages = 5;
		
		//计算上一页、下一页、总页数
		calcPage();
		//计算导航页
		calcNavPageNums();
	}
	
	/**
	 * 带参构造函数
	 * @param pageNo 当前页
	 * @param pageSize 每页记录数
	 * @param total 总记录数
	 * @param list 结果集
	 * @param navPages 导航页码数
	 */
	public PageBean(int pageNo, int pageSize, int total, List<T> list, int navPages) {
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.total = total;
		this.list = list;
		this.navPages = navPages;
		
		//计算上一页、下一页、总页数
		calcPage();
		//计算导航页
		calcNavPageNums();
	}
	
    /**
     * 计算上一页、下一页、总页数
     */
    private void calcPage() {
    	//计算总页数
    	pages = (total + pageSize - 1) / pageSize;
    	
    	//计算上一页
    	if (pageNo <= 1) {
    		prevPage = 1;
    	} else {
    		prevPage = (pageNo - 1);
    	}
    	
    	//计算下一页
    	if (pageNo >= pages) {
    		nextPage = pages;
    	} else {
    		nextPage = (pageNo + 1);
    	}
    }
    
    /**
     * 计算导航页
     */
    private void calcNavPageNums() {
        //当总页数小于或等于导航页码数时
        if (pages <= navPages) {
            navPageNums = new int[pages];
            for (int i = 0; i < pages; i++) {
                navPageNums[i] = i + 1;
            }
        } else { //当总页数大于导航页码数时
            navPageNums = new int[navPages];
            int startNum = pageNo - navPages / 2;
            int endNum = pageNo + navPages / 2;

            if (startNum < 1) {
                startNum = 1;
                //(最前navigatePages页
                for (int i = 0; i < navPages; i++) {
                    navPageNums[i] = startNum++;
                }
            } else if (endNum > pages) {
                endNum = pages;
                //最后navigatePages页
                for (int i = navPages - 1; i >= 0; i--) {
                    navPageNums[i] = endNum--;
                }
            } else {
                //所有中间页
                for (int i = 0; i < navPages; i++) {
                    navPageNums[i] = startNum++;
                }
            }
        }
    }

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public int getNavPages() {
		return navPages;
	}

	public void setNavPages(int navPages) {
		this.navPages = navPages;
	}

	public int[] getNavPageNums() {
		return navPageNums;
	}

	public void setNavPageNums(int[] navPageNums) {
		this.navPageNums = navPageNums;
	}
	
}
