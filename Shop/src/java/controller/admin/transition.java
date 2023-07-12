/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ptkng
 */
public class transition extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String transition = request.getParameter(("transition"));
        int number = 1;
        if ( transition != null ){
            number = Integer.parseInt(transition);
        }
        
        switch ( number ){
            case 1:
                response.sendRedirect("listAdmin");
                break;
            case 2:  
                response.sendRedirect("adAccount");
                break;
            case 3: 
                response.sendRedirect("adOrderCXN");
                break;
            case 4: 
                response.sendRedirect("adOrderDG");
                break;
              case 5: 
                response.sendRedirect("adOrderTC");
                break;  
             case 6: 
                response.sendRedirect("adOrderDGD");
                break;
            case 7: 
                response.sendRedirect("adOrderTLH");
                break;
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


}
