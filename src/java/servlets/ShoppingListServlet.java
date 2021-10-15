package servlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShoppingListServlet extends HttpServlet {
    
    private ArrayList<String> itemList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        
        session.setAttribute("itemList", itemList);

        String usernameCheck = (String) session.getAttribute("username");

        if (usernameCheck != null) {
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
            return;
        } else {
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        String action = "";

        action = request.getParameter("action");

        if (action.equals("register")) {
            String username = "";
            username = request.getParameter("username");
            session.setAttribute("username", username);
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
            return;
            
        } else if (action.equals("logout")) {
            session.invalidate();
            itemList.clear();
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
            
        } else if (action.equals("addItem")) {
            itemList.add(request.getParameter("item"));
            session.setAttribute("itemList", itemList);
            response.sendRedirect("shoppingList");
            return;
            
        } else if (action.equals("delete")) {
            String item = request.getParameter("selectedItem");
            System.out.println(item);
            for (int i = 0; i < itemList.size(); i++) {
                if(itemList.get(i).equals(item)) {
                    itemList.remove(i);
                }
            }
            session.setAttribute("itemList", itemList);
            response.sendRedirect("shoppingList");
            return;
        }

    }

}
