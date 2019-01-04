package com.springboot.eims.util;

import org.springframework.ui.ModelMap;

import com.github.pagehelper.PageInfo;

/*
 * 计算前端分页控件的起始页
 */
public class PageUtils {
	
	public static int countStartPage(int curpage, int total){
		
		if((curpage - 2) <= 0) return 1;
		if((curpage + 2) <= total){
			return curpage - 2;
		}
		else{
			return total - 4;
		}
	}
	
	public static int countEndPage(int start, int total){
		
		return (start + 4) > total
				? total:(start + 4);
	}
	
	public static void tansferPageDataToFront(PageInfo<?> pageInfo, ModelMap map,int page){
		int startPage = PageUtils.countStartPage(page, pageInfo.getPages());
		int endPage = PageUtils.countEndPage(startPage, pageInfo.getPages());
		map.addAttribute("page", page);
		map.addAttribute("startPage", startPage);
		map.addAttribute("endPage", endPage);
	}
}
