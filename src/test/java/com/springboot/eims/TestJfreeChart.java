package com.springboot.eims;

import java.awt.Font;
import java.io.FileOutputStream;
import java.io.IOException;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.data.general.DefaultPieDataset;

public class TestJfreeChart {

	public static void main(String[] args) throws IOException{
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
		DefaultPieDataset data = getDataSet();
		JFreeChart chart = ChartFactory.createPieChart3D("我无语",  // 图表标题
		data, 
		true, // 是否显示图例
		false,
		false
		);
		//写图表对象到文件，参照柱状图生成源码
		FileOutputStream fos_jpg = null;
		try {
			fos_jpg = new FileOutputStream("D:\\fruit.png");
			ChartUtilities.writeChartAsJPEG(fos_jpg,1.0f,chart,400,300,null);
			/* //6. 将图形转换为图片，传到前台  
	        String fileName = ServletUtilities.saveChartAsJPEG(chart, 700, 400, null, request.getSession());  
	        String chartURL=request.getContextPath() + "/chart?filename="+fileName;  
	        modelMap.put("chartURL", chartURL);*/  
			/*<div  style="text-align:center">  
	           jfreechart _3D柱状图 <br><br>  
	          点击显示柱状图<a href="getColumnChart">getMajorChart</a>  
	         <br><br>  
	         <img src="${chartURL}"  width=600 height=400  border=0  color=gray>  
	      </div>  */
		} finally {
			try {
				fos_jpg.close();
			} catch (Exception e) {}
		}
	}
	/**
	 * 获取一个演示用的简单数据集对象
	 * @return
	 */
	private static DefaultPieDataset getDataSet() {
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("苹果",100);
		dataset.setValue("梨子",200);
		dataset.setValue("葡萄",300);
		dataset.setValue("香蕉",400);
		dataset.setValue("荔枝",500);
		return dataset;
	}
}
