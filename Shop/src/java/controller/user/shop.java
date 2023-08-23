/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Arrays;

/**
 *
 * @author ptkng
 */
public class shop extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] arr_price = request.getParameterValues("price");
        String[] arr_category = request.getParameterValues("category");

        Integer[] priceValues = new Integer[arr_price.length];
        Integer[] categoryValues = new Integer[arr_category.length];
        
        String price = arr_price[0].substring(1, arr_price[0].length() - 1); // Loại bỏ dấu ngoặc vuông
        arr_price = price.split(","); // Tách chuỗi thành mảng các chuỗi con

        Integer[] PRICE = new Integer[arr_price.length];
        
        for (int i = 0; i < arr_price.length; i++) {
            PRICE[i] = Integer.parseInt(arr_price[i]);
        }

        String category = arr_category[0].substring(1, arr_category[0].length() - 1); // Loại bỏ dấu ngoặc vuông
        arr_category = price.split(","); // Tách chuỗi thành mảng các chuỗi con

        Integer[] CATEGORY = new Integer[arr_category.length];
        
        for (int i = 0; i < arr_category.length; i++) {
            CATEGORY[i] = Integer.parseInt(arr_category[i]);
        }
        
        
        
    }
}
