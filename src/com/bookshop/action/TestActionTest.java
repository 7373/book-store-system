package com.bookshop.action;


import org.apache.struts2.StrutsTestCase;
import org.junit.Test;
import com.opensymphony.xwork2.ActionProxy;


public class TestActionTest extends StrutsTestCase {
	@Test
	public void testExecute() throws Exception {
		ActionProxy proxy = null;
		TestAction test = null;
		request.setParameter("param", "test...");
		proxy = getActionProxy("/test.action");
		test = (TestAction) proxy.getAction();
		String result = proxy.execute();
		assertEquals("success", result);
		assertEquals("test...", test.getParam());
	}
}