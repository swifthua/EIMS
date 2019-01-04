package com.springboot.eims.chart.controller;

import java.awt.Font;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.jfree.chart.ChartColor;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.springboot.eims.entity.Area;
import com.springboot.eims.service.AreaService;

@Controller
public class GenerateRegionController {
	  final String primarySchool = "小学";
	  final String secondarySchool = "中学";
	  final String pingchang = "平昌县";
	  final String wenchuan = "汶川县";
	  final String jiuzhaigou = "九寨沟";
	  final String xiaojin = "小金县";
	  final String heishui = "黑水县";
	  final String lixian = "理县";
	  final String aba = "阿坝县";
	  final String danba = "丹巴县";
	  
	@Autowired
	AreaService areaService;
      
	
	@GetMapping("/getRegionSchool")
	public String getRegionSchool(ServletRequest req, ServletResponse res) throws Exception{
		//创建主题样式  
        StandardChartTheme standardChartTheme=new StandardChartTheme("CN");  
        //设置标题字体  
        standardChartTheme.setExtraLargeFont(new Font("宋书",Font.PLAIN,20));  
        //设置图例的字体  
        standardChartTheme.setRegularFont(new Font("宋书",Font.PLAIN,15));  
        //设置轴向的字体  
        standardChartTheme.setLargeFont(new Font("宋书",Font.PLAIN,15));  
        //应用主题样式  
        ChartFactory.setChartTheme(standardChartTheme);
        
		res.setContentType("image/jpeg");
		DefaultCategoryDataset data = getDataSet();
		JFreeChart barChart = ChartFactory.createBarChart(
		         "地区学校分布", 
		         "县区", "学校数量", 
		         data,PlotOrientation.VERTICAL, 
		         true, true, false);
		
		//设置总的背景颜色
		barChart.setBackgroundPaint(ChartColor.WHITE);
		CategoryPlot p = barChart.getCategoryPlot();
		// 设置图的背景颜色
		p.setBackgroundPaint(ChartColor.WHITE);
		ChartUtilities.writeChartAsJPEG(res.getOutputStream(), 1.0f, barChart, 800,
				500, null);
		return "chaeducation/chart";
	}
	
	private DefaultCategoryDataset getDataSet() {
		DefaultCategoryDataset dataset = new DefaultCategoryDataset( );
		List<Area> listArea=areaService.findAllArea();
		Map<String,Integer> map1=new HashMap<>();
		Map<String,Integer> map2=new HashMap<>();
		for(Area area:listArea){
			map1.put(area.getAreaName(), area.getPriamryNumber());
			map2.put(area.getAreaName(), area.getSecondaryNumber());
		}
		for (Map.Entry<String, Integer> entry : map1.entrySet()) {  
			dataset.addValue( entry.getValue(), primarySchool , entry.getKey() );
		    //System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());  
		} 
		for (Map.Entry<String, Integer> entry : map2.entrySet()) {  
			dataset.addValue( entry.getValue(), secondarySchool , entry.getKey() );
		    //System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());  
		}
		
//		dataset.addValue( 1.0 , primarySchool , pingchang );
//		dataset.addValue( 3.0 , primarySchool , wenchuan );
//		dataset.addValue( 5.0 , primarySchool , jiuzhaigou );
//		dataset.addValue( 5.0 , primarySchool , xiaojin );
//		dataset.addValue( 5.0 , primarySchool , heishui );
//		dataset.addValue( 6.0 , primarySchool , lixian );
//		dataset.addValue( 10.0 , primarySchool , aba );
//		dataset.addValue( 4.0 , primarySchool , danba );
//
//		dataset.addValue( 4.0 , secondarySchool , pingchang );
//		dataset.addValue( 2.0 , secondarySchool , wenchuan );
//		dataset.addValue( 3.0 , secondarySchool , jiuzhaigou );
//		dataset.addValue( 6.0 , secondarySchool , xiaojin );
//		dataset.addValue( 4.0 , secondarySchool , heishui );
//		dataset.addValue( 2.0 , secondarySchool , lixian );
//		dataset.addValue( 3.0 , secondarySchool , aba );
//		dataset.addValue( 6.0 , secondarySchool , danba );
		return dataset;
	}
}
