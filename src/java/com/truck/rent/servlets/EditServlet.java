/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truck.rent.servlets;

import com.truck.rent.helper.Helper;
import com.truck.rent.dao.UserDao;
import com.truck.rent.entities.Message;
import com.truck.rent.entities.User;
import com.truck.rent.helper.ConnectionProvider;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Lenovo
 */
@MultipartConfig
public class EditServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditServlet</title>");            
            out.println("</head>");
            out.println("<body>");

 //fetch all data
 
            String userName=request.getParameter("user_name");
            String userEmail =request.getParameter("user_email");

            String userMobile=request.getParameter("user_mobile");
            String userPassword=request.getParameter("user_password");
            
            //uploding for photo
            Part part=request.getPart("image");
            String imageName=part.getSubmittedFileName();
                //get user from session
                HttpSession s=request.getSession();
                User user=(User) s.getAttribute("currentUser");
                
                user.setName(userName);
                //user.setEmail(userEmail);
                user.setMobile(userMobile);
                user.setPassword(userPassword);
                
                
                String oldFile=user.getProfile();
                
                user.setProfile(imageName); 
                
                //upadet database
                
                UserDao userDao=new UserDao(ConnectionProvider.getConnection());
                
                boolean ans=userDao.updateUser(user);
             if(ans==true){
             
             
             String path=request.getRealPath("/")+ "pics" +File.separator+user.getProfile();
                   //delete code
                  String pathOldFile=request.getRealPath("/")+ "pics" +File.separator+oldFile;
                  if(!oldFile.equals("default.jpg")){
                   Helper.deleteFile(pathOldFile);
                  }
                    
                    if(Helper.saveFile(part.getInputStream(), path)){
                         out.println("profile upadated..");   
                         Message msg=new Message("Profile Updated....","success","alert-success");
             
                        s.setAttribute("msg", msg);
             
                    }else{
                        Message msg=new Message("Something went worng...","error","alert-danger");
                        s.setAttribute("msg", msg);
                    }
                  
        }
             else{
             out.println("not updated..");
             Message msg=new Message("Something went worng...","error","alert-danger");
             s.setAttribute("msg", msg);
             
             }
             
                response.sendRedirect("profile.jsp");

            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request,response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
