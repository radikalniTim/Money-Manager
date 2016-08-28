package servlets;

import javax.servlet.http.HttpServletRequest;

public interface FormInputInterface {
	void initDatabaseConnection();
	void getInputValues(HttpServletRequest request);
	boolean isAnyFieldEmpty();
}
