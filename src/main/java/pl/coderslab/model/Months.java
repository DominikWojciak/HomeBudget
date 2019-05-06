package pl.coderslab.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class Months {
	public static List<String> getMonths() {
		List<String> months = new ArrayList<>();
		months.add("January");
		months.add("February");
		months.add("March");
		months.add("April");
		months.add("May");
		months.add("June");
		months.add("July");
		months.add("August");
		months.add("September");
		months.add("October");
		months.add("November");
		months.add("December");
		return months;
	}

	public static String getCurrentMonth() {
		List<String> months = Months.getMonths();
		return months.get(Calendar.getInstance().get(Calendar.MONTH));
	}
}
