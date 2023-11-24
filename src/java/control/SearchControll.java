/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Product;

/**
 *
 * @author hoang
 */
@WebServlet(name="SearchControll", urlPatterns={"/search"})
public class SearchControll extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String ProductID=request.getParameter("ProductID");
        String ProductName=request.getParameter("ProductName");
        String sortID=request.getParameter("sortID");
        String txt = request.getParameter("txt");
        DAO dao= new DAO();
         List<Product> list =dao.searchByName(txt); 
         
        
        
        
       
    
        
         int page, numberpage = 12;
        int size = list.size();
        int num = (size % 12 == 0 ? (size / 12) : ((size / 12)) + 1);
        String xpage = request.getParameter("page");
        if (xpage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xpage);
        }
        int start, end;
        start = (page - 1) * numberpage;
        end = Math.min(page * numberpage, size);
        List<Product> listpage = dao.getListByPage(list, start, end);
        request.setAttribute("size", size);
        request.setAttribute("numberpage", numberpage);
        request.setAttribute("page", page);
        request.setAttribute("num", num);
        request.setAttribute("listpage", listpage);
        
        
         if(Integer.parseInt(sortID)==0){
             List<Product> listdesc = dao.getAllProductdesc();
            request.setAttribute("listpage", listdesc);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        if(Integer.parseInt(sortID)==1){
            List<Product> listasc = dao.getAllProductasc();
            request.setAttribute("listpage", listasc);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        if(Integer.parseInt(sortID)==2){
            
            List<Product> list1 = dao.search(ProductID, ProductName,sortID);
            request.setAttribute("listpage", list1);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        
        
         request.setAttribute("listP",list);
          request.setAttribute("searchvalue",txt);
         request.getRequestDispatcher("home.jsp").forward(request, response);
        
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
