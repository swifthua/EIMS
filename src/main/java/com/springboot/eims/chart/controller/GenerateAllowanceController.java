package com.springboot.eims.chart.controller;

import java.awt.Font;

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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.springboot.eims.constant.AllowanceConstant;

@Controller
public class GenerateAllowanceController {
	//final String baseAllowane = "基本补助";
	//final String educationAllowance = "教育补助";
	//final String otherAllowance = "其他补助";

	@GetMapping("/getAllowance")
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
		         "生活补助标准及占比", 
		         "年份", "补助金额", 
		         data,PlotOrientation.VERTICAL, 
		         true, true, false);
		
		//设置总的背景颜色
		barChart.setBackgroundPaint(ChartColor.WHITE);
		CategoryPlot p = barChart.getCategoryPlot();
		// 设置图的背景颜色
		p.setBackgroundPaint(ChartColor.WHITE);
		// 设置表格线颜色
		p.setRangeGridlinePaint(ChartColor.blue);
		ChartUtilities.writeChartAsJPEG(res.getOutputStream(), 1.0f, barChart, 800,500, null);
		return "chaeducation/chart";
	}
	
	private DefaultCategoryDataset getDataSet() {
		DefaultCategoryDataset dataset = new DefaultCategoryDataset( );
		dataset.addValue( 220, AllowanceConstant.BASE_ALLOWANCE.getAllowance() , "2016年");
		dataset.addValue( 280, AllowanceConstant.BASE_ALLOWANCE.getAllowance()  ,"2017年");
		
		dataset.addValue( 180, AllowanceConstant.EDUCATION_ALLOWANCE.getAllowance() , "2016年");
		dataset.addValue( 380, AllowanceConstant.EDUCATION_ALLOWANCE.getAllowance()  ,"2017年");
		
		dataset.addValue( 260, AllowanceConstant.OTHER_ALLOWANCE.getAllowance() , "2016年");
		dataset.addValue( 380, AllowanceConstant.OTHER_ALLOWANCE.getAllowance()  ,"2017年");

		return dataset;
	}
}
