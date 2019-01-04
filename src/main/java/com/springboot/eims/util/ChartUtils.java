package com.springboot.eims.util;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.data.general.DefaultPieDataset;

import com.springboot.eims.entity.Result;

import java.awt.Font;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/**
 * @Description 生成饼状图
 * @param dataset
 *            数据集
 * @return 图片名
 */
public class ChartUtils {

	private static int width = 640;
	private static int height = 480;

	public static void createPieChart(String title, OutputStream stream, List<Result> dataset) throws IOException {
		
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
		DefaultPieDataset pieSet = new DefaultPieDataset();

		for (Result res : dataset) {
			pieSet.setValue(res.getCategory(), Double.parseDouble(res.getNumber()));
		}

		JFreeChart chart = ChartFactory.createPieChart(title, pieSet, true, true, false);

		ChartUtilities.writeChartAsJPEG(stream, chart, width, height);
	}

}
