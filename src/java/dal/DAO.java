
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Person;
import model.Product;
import model.Type;

/**
 *
 * @author hoang
 */
public class DAO extends DBContext {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();

        String sql = "select * from [Product]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Type> getAllType() {
        List<Type> list = new ArrayList<>();

        String sql = "select * from [Type]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Type(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public Product getLast() {
        String sql = "SELECT top 3 *\n"
                + "  FROM [Product]\n"
                + "  order by [TypeID] desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Product> getAllProductasc() {
        List<Product> list = new ArrayList<>();

        String sql = "SELECT *\n"
                + "  FROM [Product]\n"
                + "  order by ListPrice asc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {

        }
        return list;
    }
     public List<Product> getAllProductdesc() {
        List<Product> list = new ArrayList<>();

        String sql = "SELECT *\n"
                + "  FROM [Product]\n"
                + "  order by ListPrice desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Product> getProductNoiBat() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM [Product]\n"
                + "where [ProductID] = 611 or [ProductID] = 102 or [ProductID] = 91 ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Product> getProductByTypeID(String typeID) {
        List<Product> list = new ArrayList<>();

        String sql = "SELECT  *\n"
                + "  FROM [Product]\n"
                + "  where [TypeID] =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, typeID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public Product getProductByID(String productID) {

        String sql = "SELECT *    \n"
                + "  FROM [Product]\n"
                + "  where [ProductID] = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, productID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public Product getProductByID2(int id) {

        String sql = "SELECT *    \n"
                + "  FROM [Product]\n"
                + "  where [ProductID] = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Product> getProductByTypeID1(int typeID, String ProductID) {
        List<Product> list = new ArrayList<>();

        String sql = " SELECT  *\n"
                + " FROM [Product]\n"
                + " where [TypeID] =? and [ProductID] != ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, typeID);
            ps.setString(2, ProductID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Product> searchByName(String searchTxt) {
        List<Product> list = new ArrayList<>();

        String sql = "SELECT  *\n"
                + "  FROM [Product]\n"
                + "  where [name] like ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + searchTxt + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Product> search(String ProductID, String name, String TypeID) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT p.ProductID,p.Name as PName,p.image as Pimage,p.ListPrice\n"
                + "  ,p.SellStartDate,p.description as Pdescription,p.TypeID,p.SellID,p.quantity\n"
                + "  FROM [Product] p INNER JOIN [Type] t\n"
                + "  ON p.TypeID = t.TypeID where 1=1 ";
        if (ProductID != null && ProductID.equals("")) {
            sql += " AND p.ProductID= " + ProductID;
        }
        if (name != null && !name.equals("")) {
            sql += " AND p.name like '%" + name + "%'";
        }
        if (TypeID !=null && !TypeID.equals("")) {
            sql += " AND T.TypeID = " + TypeID;
        }
        

        try {

            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return list;
    }

    public Person login(String loginID, String password) {
        String sql = "SELECT *\n"
                + "  FROM [Person]\n"
                + "  where [LoginID]=?\n"
                + "  and [Password]=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, loginID);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Person(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (SQLException e) {

        }

        return null;
    }

    public Person checkregister(String personID, String loginID) {
        String sql = "SELECT *\n"
                + "  FROM [Person]\n"
                + "  where [PersonID]=?\n"
                + "  and [LoginID]=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, personID);
            ps.setString(2, loginID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Person(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (SQLException e) {

        }

        return null;
    }

    public void register(String PersonID, String FirstName, String LastName, String LoginID, String Password, String BirthDate) {
        String sql = "insert into [Person]"
                + "values(?,?,?,?,?,?,0,0,0)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, PersonID);
            ps.setString(2, FirstName);
            ps.setString(3, LastName);
            ps.setString(4, LoginID);
            ps.setString(5, Password);
            ps.setString(6, BirthDate);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public List<Person> getAllPerson() {
        List<Person> list = new ArrayList<>();

        String sql = "select * from [Person]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Person(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }

        } catch (SQLException e) {

        }
        return list;
    }

    public Person getPersonByID(String personID) {

        String sql = "SELECT *    \n"
                + "  FROM [Person]\n"
                + "  where [PersonID] = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, personID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Person(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDouble(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void addPerson(int personID, String firstName, String lastName, String loginID, String password,
            String birthDate, double amount, int isSell, int isAdmin) {
        String sql = "Insert [Person](PersonID,[FirstName],[LastName],[LoginID],[Password],[BirthDate],[amount],[isSell],[isAdmin] )\n"
                + "Values  (?,?,?,?,?,?,?,?,?),\n";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, personID);
            ps.setString(2, firstName);
            ps.setString(3, lastName);
            ps.setString(4, loginID);
            ps.setString(5, password);
            ps.setString(6, birthDate);
            ps.setDouble(7, amount);
            ps.setInt(8, isSell);
            ps.setInt(9, isAdmin);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updatePerson(int personID, String firstName, String lastName, String loginID, String password,
            String birthDate, double amount, int isSell, int isAdmin) {
        String sql = "update [Person]\n"
                + "set [FirstName]=?,\n"
                + "[LastName]=?,\n"
                + "[LoginID]=?,\n"
                + "[Password]=?,\n"
                + "[BirthDate]=?,\n"
                + "[amount]=?,\n"
                + "[isSell]=?,\n"
                + "[isAdmin]=?\n"
                + "where [PersonID]=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, loginID);
            ps.setString(4, password);
            ps.setString(5, birthDate);
            ps.setDouble(7, amount);
            ps.setInt(8, isSell);
            ps.setInt(9, isAdmin);
            ps.setInt(10, personID);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public List<Product> getProductBySellID(String sellID) {
        List<Product> list = new ArrayList<>();

        String sql = "SELECT  *\n"
                + "FROM [Product] p \n"
                + "where [SellID] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, sellID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public void deleteProduct(String productID) {
        String sql = "DELETE \n"
                + "  FROM Product\n"
                + "  WHERE ProductID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, productID);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void addProduct(int ProductID, String Name, String image, String ListPrice, String SellStartDate,
            String description, String TypeID, int SellID, int quantity) {
        String sql = "Insert [Product]\n"
                + "  ([ProductID],[Name],[image],[ListPrice],[SellStartDate],[description],[TypeID],[SellID],[quantity])\n"
                + "values  (?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, ProductID);
            ps.setString(2, Name);
            ps.setString(3, image);
            ps.setString(4, ListPrice);
            ps.setString(5, SellStartDate);
            ps.setString(6, description);
            ps.setString(7, TypeID);
            ps.setInt(8, SellID);
            ps.setInt(9, quantity);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updateProduct(String Name, String image, String ListPrice, String SellStartDate,
            String description, int quantiry, String ProductID) {
        String sql = "update [Product]\n"
                + "set [Name]=?,\n"
                + "[image]=?,\n"
                + "[ListPrice]=?,\n"
                + "[SellStartDate]=?,\n"
                + "[description]=?,\n"
                + "[quantity]=?\n"
                + "where [ProductID]=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(2, Name);
            ps.setString(3, image);
            ps.setString(4, ListPrice);
            ps.setString(5, SellStartDate);
            ps.setString(6, description);
            ps.setInt(7, quantiry);
            ps.setString(1, ProductID);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void LienHe(String HoVaTen, String SDT, String Email, String DiaChi, String TieuDe, String NoiDung) {
        String sql = "Insert [LienHe]"
                + "([HoVaTen],[SDT],[Email],[DiaChi],[TieuDe],[NoiDung])"
                + "values  (?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, HoVaTen);
            ps.setString(2, SDT);
            ps.setString(3, Email);
            ps.setString(4, DiaChi);
            ps.setString(5, TieuDe);
            ps.setString(6, NoiDung);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public List<Product> getListByPage(List<Product> list, int start, int end) {
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public List<Person> getListByPagePerson(List<Person> list, int start, int end) {
        ArrayList<Person> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        Person p = dao.login("LanhKi", "1231");
//        System.out.println(p);
        List<Person> list = dao.getAllPerson();
        for (Person product : list) {
            System.out.println(product);
        }
    }
//         public static void main(String[] args) {
//        DAO dao = new DAO();
//         List<Type> list = dao.getAllType();
//             for (Type type : list) {
//                 System.out.println(type);
//             }
//        }
//     public static void main(String[] args) {
//       DAO dao = new DAO();
//       Product p = dao.getLast();
//         System.out.println(p);
//    }

//    public static void main(String[] args) {
//        DAO dao = new DAO();
//        List<Product> list = dao.getProductByTypeID("6");
//        for (Product product : list) {
//            System.out.println(product);
//        }
//
//    }
//    public static void main(String[] args) {
//        DAO dao = new DAO();
//        Product p = dao.getProductByID("51");
//        System.out.println(p);
//    }
//    public static void main(String[] args) {
//        DAO dao = new DAO();
//        List<Product> list = dao.getProductBySellID("11");
//        for (Product product : list) {
//            System.out.println(product);
//        }
//
//    }
}
