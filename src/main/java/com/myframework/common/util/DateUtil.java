package com.myframework.common.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 日期时间工具类
 * @author 马元
 * @date 2018年9月2日
 * @version 1.0
 */
public class DateUtil {
	
	/**
	 * 根据日期时间格式 获取当天日期的字符串格式
	 * @param pattern 日期、时间格式
	 * @return
	 */
	public static String getCurrentDateString(String pattern) {
		return new SimpleDateFormat(pattern).format(new Date());
	}

	/**
	 * 把完整日期格式字符串转换为日期
	 * 
	 */
	public static Date parseFullDate(String dateString) throws ParseException{
		return new SimpleDateFormat("yyyyMMddHHmmssSSS").parse(dateString);
	}
	

	/**
	 * 获取格式化完整日期yyyy-MM-dd HH:mm:ss
	 * */
	public static String getFormatDate(){
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	}
	
	/**
	 * 获取格式化完整日期yyyy-MM-dd HH:mm:ss
	 * */
	public static String getFormatDate(Date d){
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(d);
	}
	
	/**
	 * 获取格式化日期yyyy-MM-dd
	 * 
	 * */
	public static String getSimpleFormatDate(){
		return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	}
	
	/**
	 * 获取格式化日期yyyy-MM-dd
	 * 
	 * */
	public static String getSimpleFormatDate(Date d){
		return new SimpleDateFormat("yyyy-MM-dd").format(d);
	}
	
	/**
	 * 获取FullCalendar插件日期格式日期
	 * 
	 * */
	public static String getFullCalendarDate(){
		return new SimpleDateFormat("yyyy-MM-ddTHH:mm:ss").format(new Date());
	}
	
	/**
	 * 根据月份获取季度
	 * @param month
	 * @return
	 */
	public static int getQuarterByMonth(int month) {
		int quarter = 0;
		try {
			if (1 <= month && month <= 3) quarter = 1;
			if (4 <= month && month <= 6) quarter = 2;
			if (7 <= month && month <= 9) quarter = 3;
			if (10 <= month && month <= 12) quarter = 4;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return quarter;
	}
	
	public static Date formatSimpleDate(String dateString){
		Date date=null;
		try {
			date=new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	public static Date formatDate(String dateString){
		Date date=null;
		try {
			date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(dateString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	public static String getYear(String dateString){
		Date date=formatSimpleDate(dateString);
		Calendar cal=Calendar.getInstance();
		cal.setTime(date);
		return String.valueOf(cal.get(Calendar.YEAR));
	}
	public static String getMonth(String dateString){
		Date date=formatSimpleDate(dateString);
		Calendar cal=Calendar.getInstance();
		cal.setTime(date);
		return String.valueOf(cal.get(Calendar.MONTH)+1);
	}
	public static String getDay(String dateString){
		Date date=formatSimpleDate(dateString);
		Calendar cal=Calendar.getInstance();
		cal.setTime(date);
		return String.valueOf(cal.get(Calendar.DAY_OF_MONTH));
	}
	
	/**
	 * 根据年月获取当前月份的工作日（排除周六、周天）
	 * @param monthString 月份(2012-12)
	 * @return
	 */
	public static int getWorkDay(String monthString) {
        int days = 0;
        int year = Integer.parseInt(monthString.substring(0,4));
        int month = Integer.parseInt(monthString.substring(5,7));
        Calendar c = Calendar.getInstance();
        c.set(year, month - 1, 1);
        int maxDay = c.getActualMaximum(Calendar.DATE);
        for (int i = 0; i < maxDay; i++) {
            if (c.get(Calendar.DAY_OF_WEEK) != 6
                    && c.get(Calendar.DAY_OF_WEEK) != 7) {
                days++;
            }
            c.add(Calendar.DATE, 1);
        }
        return days;
    }
	
	/**
	 * 根据日期获取星期数
	 * @param date
	 * @return
	 */
	public static int getWeek(String date) {
		int week = 0;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			c.setTime(sdf.parse(date));
			if (c.get(Calendar.DAY_OF_WEEK) == 1) {
				week = 7;
			} else {
				week = c.get(Calendar.DAY_OF_WEEK) - 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return week;
	}
	
	/**
	 * 根据开始日期、截止日期获取周数
	 * @param beginDate
	 * @param endDate
	 * @return
	 */
	public static int getWeakCount(String beginDate, String endDate) {
		int weekCount = 0;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			if (getWeek(beginDate) != 1) {
				weekCount++;
				int week = getWeek(beginDate);
				beginDate = sdf.format(new Date(sdf.parse(beginDate).getTime() + (8-week)*(24*60*60*1000L)));
			}
			Date start = sdf.parse(beginDate);
			Date end = sdf.parse(endDate);
			long time = end.getTime() - start.getTime();
			weekCount += (int)((time + 24*60*60*1000L) / (7*24*60*60*1000));
			int mod = (int)((time + 24*60*60*1000L) % (7*24*60*60*1000));
			
			if (weekCount > 0 && mod > 0) {
				weekCount++;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return weekCount;
	}
	
	/**
	 * 根据日期间隔获取天数
	 * @param beginDate
	 * @param endDate
	 * @return
	 */
	public static int getDayCount(String beginDate, String endDate) {
		int dayCount = 0;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date start = sdf.parse(beginDate);
			if ("".equals(endDate) || beginDate.equals(endDate)) {
				return 1;
			} else {
				Date end = sdf.parse(endDate);
				long time = end.getTime() - start.getTime();
				dayCount = (int)((time + 24*60*60*1000L) / (24*60*60*1000));
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return dayCount;
	}
	
	/**
	 * 根据日期间隔获取周末数(周六、周天)
	 * @param beginDate
	 * @param endDate
	 * @return
	 */
	public static int getWeekendCount(String beginDate, String endDate) {
		int weekendCount = 0;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date start = sdf.parse(beginDate);
			Date end = sdf.parse(endDate);
			if ("".equals(endDate) || beginDate.equals(endDate)) {
				if ("星期日".equals(getWeekOfDate(start)) || "星期六".equals(getWeekOfDate(start))) {
					return 1;
				}
			} else {
				for (long time=start.getTime(); time<=end.getTime(); ) {
					Date temp = new Date(time);
					if ("星期日".equals(getWeekOfDate(temp)) || "星期六".equals(getWeekOfDate(temp))) {
						weekendCount++;
					}
					time += 24*60*60*1000;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return weekendCount;
	}
	
	/**
	 * 获取指定日期的星期
	 * @param date
	 * @return
	 */
	public static String getWeekOfDate(Date date) {      
	    String[] weekOfDays = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};        
	    Calendar calendar = Calendar.getInstance();      
	    if(date != null){        
	         calendar.setTime(date);      
	    }        
	    int w = calendar.get(Calendar.DAY_OF_WEEK) - 1;      
	    if (w < 0){        
	        w = 0;      
	    }      
	    return weekOfDays[w];
	}
	
	public static void main(String args[]) {
		
	}
	
}
