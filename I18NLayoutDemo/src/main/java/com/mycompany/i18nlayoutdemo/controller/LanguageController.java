/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.i18nlayoutdemo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Locale;

/**
 *
 * @author 20113
 */
@WebServlet("/change-lang")
public class LanguageController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String lang = request.getParameter("lang");

        Locale locale = "vi".equals(lang)
                ? new Locale("vi", "VN")
                : new Locale("en", "US");

        HttpSession session = request.getSession();
        session.setAttribute("jakarta.servlet.jsp.jstl.fmt.locale.session", locale);

        // Quay lại trang trước (nếu có referer), mặc định về trang chủ nếu null
        String referer = request.getHeader("Referer");
        if (referer == null || referer.isEmpty()) {
            referer = request.getContextPath() + "/index.jsp";
        }
        response.sendRedirect(referer);
    }
}
