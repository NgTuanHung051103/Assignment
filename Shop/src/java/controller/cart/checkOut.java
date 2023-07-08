package controller.cart;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import logic.LGcartCookie;
import logic.LGlogin;
import model.Cart;
import model.CartDetail;
import model.User;

public class checkOut extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        Lay duoc txt_cart sau khi da save -> chuyen thanh order_txt ( van giu nguyen gia tri )
        String order_txt = request.getParameter("order_txt");

//        Tao cart: list luu cac item da duoc add vao gio hang (0rder)
        Cart order = new Cart(order_txt);

//        Lay list order co trong cart DA CHECKOUT
        ArrayList< CartDetail> listOrderDetail = order.getCart();

//        lay so luong order co trong cart DA CHECKOUT
        int n = listOrderDetail != null ? listOrderDetail.size() : 0;

        LGlogin login = new LGlogin();

//        Lay Tk da dang nhap tu cookie:
        String Tk = login.getTK(request, response);

//          Lay thong tin User bang Tk da dang nhap
        User loginedAccount = login.get_Info_User_Login(Tk);

        request.setAttribute("txt", order_txt);
        request.setAttribute("size", n);
        request.setAttribute("data", listOrderDetail);
        request.setAttribute("user", loginedAccount);
        request.getRequestDispatcher("view/user/homepage/checkOut.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
