package com.servlet;

import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class RequestListener implements ServletRequestListener,ServletRequestAttributeListener{

	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("Request Object Created");
		System.out.println();
	}
	public void requestDestroyed(ServletRequestEvent sre) {
		
	}
	public void attributeAdded(ServletRequestAttributeEvent srae) {
		
	}
	public void attributeRemoved(ServletRequestAttributeEvent srae) {
		
	}
	
}
