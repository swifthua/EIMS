package com.springboot.eims.chart.controller;

import java.awt.Font;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.jfree.chart.ChartColor;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.Plot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.XYPlot;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.xy.XYDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.springboot.eims.entity.Student;
import com.springboot.eims.service.StudentService;

@Controller
public class GenreateStudentChartController {
	
	@Autowired
	StudentService studentService;
	
	@GetMapping("/generateChildLine")
	public String generateChildLine(ServletRequest req, ServletResponse res) throws Exception{
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
		XYDataset data=getDataSet();

        JFreeChart xylineChart = ChartFactory.createXYLineChart(
                "儿童少年情况" ,
                "年份/年" ,
                "人数/位" ,
                data ,
                PlotOrientation.VERTICAL ,
                true , true , false);

		//设置总的背景颜色
        xylineChart.setBackgroundPaint(ChartColor.WHITE);
		XYPlot p = xylineChart.getXYPlot();
		p.setBackgroundPaint(ChartColor.WHITE);
		// 设置图的背景颜色
		ChartUtilities.writeChartAsJPEG(res.getOutputStream(), 1.0f, xylineChart, 800,
				500, null);
        return "/stumanager/child";
	}
	private XYDataset getDataSet(){
		int[] count=new int[10];
		int[] count2=new int[10];
		final String child="0~17岁少年儿童总数";
		final String study="上学人数";

		List<Student> listStudent=studentService.findAllStudent();
		for(Student student:listStudent){
			if(student.getYear()<=2005){
				count[0]++;
				if(student.getAge()>=10)
					count2[0]++;
			}else if(student.getYear()==2006){
				count[1]++;
				if(student.getAge()>=10)
					count2[1]++;
			}else if(student.getYear()==2007){
				count[2]++;
				if(student.getAge()>=10)
					count2[2]++;
			}else if(student.getYear()==2008){
				count[3]++;
				if(student.getAge()>=10)
					count2[3]++;
			}else if(student.getYear()==2009){
				count[4]++;
				if(student.getAge()>=10)
					count2[4]++;
			}else if(student.getYear()==2010){
				count[5]++;
				if(student.getAge()>=10)
					count2[5]++;
			}else if(student.getYear()==2011){
				count[6]++;
				if(student.getAge()>=10)
					count2[6]++;
			}else if(student.getYear()==2012){
				count[7]++;
				if(student.getAge()>=10)
					count2[7]++;
			}else if(student.getYear()==2013){
				count[8]++;
				if(student.getAge()>=10)
					count2[8]++;
			}else if(student.getYear()==2014){
				count[9]++;
				if(student.getAge()>=10)
					count2[9]++;
			}
		}
//	    dataset.addValue( count[0], child , "<2005" );
	    
	    final XYSeries childXY = new XYSeries(child);
	    childXY.add( 2005,count[0] );
	    childXY.add( 2006,count[1] );
	    childXY.add( 2007,count[2] );
	    childXY.add( 2008,count[3] );
	    childXY.add( 2009,count[4] );
	    childXY.add( 2010,count[5] );
	    childXY.add( 2011,count[6] );
	    childXY.add( 2012,count[7] );
	    childXY.add( 2013,count[8] );
	    childXY.add( 2014,count[9] );

	    final XYSeries studyXY = new XYSeries( study );
	    studyXY.add( 2005,count2[0] );
	    studyXY.add( 2006,count2[1] );
	    studyXY.add( 2007,count2[2] );
	    studyXY.add( 2008,count2[3] );
	    studyXY.add( 2009,count2[4] );
	    studyXY.add( 2010,count2[5] );
	    studyXY.add( 2011,count2[6] );
	    studyXY.add( 2012,count2[7] );
	    studyXY.add( 2013,count2[8] );
	    studyXY.add( 2014,count2[9] );

	    final XYSeriesCollection dataset = new XYSeriesCollection( );
	    dataset.addSeries( childXY );
	    dataset.addSeries( studyXY );
	    return dataset;
	}
	
	@GetMapping("/generateByGrade")
	public String generateByGrade(ServletRequest req, ServletResponse res) throws Exception{
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
		DefaultCategoryDataset data = getDataSet1();
		JFreeChart barChart = ChartFactory.createBarChart(
		         "分年级学生情况", 
		         "年级", "人数/位", 
		         data,PlotOrientation.VERTICAL, 
		         true, true, false);
		
		//设置总的背景颜色
		barChart.setBackgroundPaint(ChartColor.WHITE);
		CategoryPlot p = barChart.getCategoryPlot();
		// 设置图的背景颜色
		p.setBackgroundPaint(ChartColor.WHITE);
		ChartUtilities.writeChartAsJPEG(res.getOutputStream(), 1.0f, barChart, 800,
				500, null);
		return "stumanager/grade";
	}
	private DefaultCategoryDataset getDataSet1() {
		int count[]=new int[10];
		DefaultCategoryDataset dataset = new DefaultCategoryDataset( );
		final String grade1="幼儿园";
		final String grade2="二年级";
		final String grade3="四年级";
		final String grade4="六年级";
		final String grade5="初二";
		final String male="男";
		final String female="女";
		List<Student> listStudent=studentService.findAllStudent();
		for(Student student:listStudent){
			if(student.getSex().equals(male)){
				if(student.getGrade()==0){
					count[0]++;
				}else if(student.getGrade()==2){
					count[1]++;
				}else if(student.getGrade()==4){
					count[2]++;
				}else if(student.getGrade()==6){
					count[3]++;
				}else if(student.getGrade()==8){
					count[4]++;
				}
			}else{
				if(student.getGrade()==0){
					count[5]++;
				}else if(student.getGrade()==2){
					count[6]++;
				}else if(student.getGrade()==4){
					count[7]++;
				}else if(student.getGrade()==6){
					count[8]++;
				}else if(student.getGrade()==8){
					count[9]++;
				}
			}
		}
		dataset.addValue( count[0] , male , grade1 );
		dataset.addValue( count[1] , male , grade2 );
		dataset.addValue( count[2] , male , grade3 );
		dataset.addValue( count[3] , male , grade4 );
		dataset.addValue( count[4] , male , grade5 );
		dataset.addValue( count[5] , female , grade1 );
		dataset.addValue( count[6] , female , grade2);
		dataset.addValue( count[7] , female , grade3 );
		dataset.addValue( count[8] , female , grade4 );
		dataset.addValue( count[9] , female , grade5 );
		return dataset;
		
	}
	
	@GetMapping("/generateFourRate")
	public String generateFourRate(ServletRequest req, ServletResponse res) throws Exception{
		final String grade1="幼儿园";
		final String grade2="六年级";
		final String grade3="初中";
		final String grade4="高中";
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
		DefaultCategoryDataset data = new DefaultCategoryDataset();
		data.addValue(80, "入学率", grade1);
		data.addValue(80, "入学率", grade2);
		data.addValue(60, "入学率", grade3);
		data.addValue(40, "入学率", grade4);
		
		data.addValue(80, "巩固率", grade1);
		data.addValue(35, "巩固率", grade2);
		data.addValue(60, "巩固率", grade3);
		data.addValue(80, "巩固率", grade4);
		
		data.addValue(80, "毕业率", grade1);
		data.addValue(70, "毕业率", grade2);
		data.addValue(70, "毕业率", grade3);
		data.addValue(40, "毕业率", grade4);
		
		data.addValue(100, "普及率", grade1);
		data.addValue(100, "普及率", grade2);
		data.addValue(100, "普及率", grade3);
		data.addValue(80, "普及率", grade4);
		res.setContentType("image/jpeg");
        JFreeChart lineChart = ChartFactory.createLineChart(
           "四率情况","年级",
           "百分率%",
           data,PlotOrientation.VERTICAL,
           true,true,false);

		//设置总的背景颜色
		lineChart.setBackgroundPaint(ChartColor.WHITE);
		CategoryPlot p = lineChart.getCategoryPlot();
		// 设置图的背景颜色
		p.setBackgroundPaint(ChartColor.WHITE);
		ChartUtilities.writeChartAsJPEG(res.getOutputStream(), 1.0f, lineChart, 800,
				500, null);
		return "/stumanager/fourrate";
	}
	
	@GetMapping("/generateNation")
	public String generateNation(ServletRequest req, ServletResponse res) throws Exception{
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
	    DefaultPieDataset dataset = getdataset3();        
	    JFreeChart piechart = ChartFactory.createPieChart( 
	       "民族成分" ,  // chart title                   
	       dataset ,         // data 
	       true ,            // include legend                   
	       true, 
	       false);
	    
		//设置总的背景颜色
		piechart.setBackgroundPaint(ChartColor.WHITE);
		Plot p = piechart.getPlot();
		// 设置图的背景颜色
		p.setBackgroundPaint(ChartColor.WHITE);
		ChartUtilities.writeChartAsJPEG(res.getOutputStream(), 1.0f, piechart, 800,
				500, null);
		return "/stumanager/nation";
	}
	private DefaultPieDataset getdataset3() {
		int count[]=new int[7];
		DefaultPieDataset dataset=new DefaultPieDataset();
		List<Student> listStudent=studentService.findAllStudent();
		for(Student student:listStudent){
			if(student.getNation().equals("回族")){
				count[0]++;
			}else if(student.getNation().equals("蒙古族")){
				count[1]++;
			}else if(student.getNation().equals("维吾尔族")){
				count[2]++;
			}else if(student.getNation().equals("壮族")){
				count[3]++;
			}else if(student.getNation().equals("白族")){
				count[4]++;
			}else if(student.getNation().equals("彝族")){
				count[5]++;
			}else{
				count[6]++;
			}
		}
	    dataset.setValue( "回族" , count[0] );             
	    dataset.setValue( "蒙古族" , count[1] );             
	    dataset.setValue( "维吾尔族" , count[2]);             
	    dataset.setValue( "壮族" , count[3] ); 
	    dataset.setValue( "白族" , count[4] );
	    dataset.setValue( "彝族" , count[5] );
	    dataset.setValue( "其他族" , count[6]); 
		return dataset;	
	}
}
