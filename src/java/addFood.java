
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215) 
public class addFood extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/food_factory";
    private String dbUser = "root";
    private String dbPass = "root";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       String dishName = request.getParameter("dishName");
        String amount = request.getParameter("amount");
        String FoodCategory = request.getParameter("FoodCategory");
        String MenuCategory = request.getParameter("MenuCategory");
        String info = request.getParameter("info");
        
        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo1");
        
        if (filePart != null) 
        {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        try 
        {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // constructs SQL statement
            String sql = "insert into fooddetails(dishName, amount , FoodCategory, MenuCategory, info, img) value(?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dishName);
            pstmt.setString(2, amount);
            pstmt.setString(3, FoodCategory);
            pstmt.setString(4, MenuCategory);
            pstmt.setString(5, info);
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                pstmt.setBlob(6, inputStream);
            }

            int row = pstmt.executeUpdate();
            if (row > 0) {
                response.sendRedirect("menu.jsp");
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        } 
    }
}
