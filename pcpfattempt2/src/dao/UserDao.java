package dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

import bean.Listing;
import sqlConnect.SqlConnection;

public class UserDao {

	static Connection con = null;
	
	public int registerUser(String Uemail, String Ufname, String Ulname, String Password) {
		try {
			con = SqlConnection.dbConnector();
			String query = "insert into user values(?,?,?,?)";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, Uemail);
			st.setString(2, Ufname);
			st.setString(3, Ulname);
			st.setString(4, Password);
			int i = st.executeUpdate();
			return i;
		} catch (SQLException e) {
			System.out.println(e);
		}
		return 0;
	}
	
	public int addListing(String name, String category, String desc, String cost, String location, String mobile, InputStream image) {
		try {
			con = SqlConnection.dbConnector();
			String query = "insert into listing(name,category,description,cost,location,mobile,image) values(?,?,?,?,?,?,?)";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, name);
			st.setString(2, category);
			st.setString(3, desc);
			st.setString(4, cost);
			st.setString(5, location);
			st.setString(6, mobile);
			st.setBlob(7, image);
			int i = st.executeUpdate();
			return i;
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	public static List<Listing> list() throws SQLException {

		List<Listing> listings = new ArrayList<Listing>();
		try {
			con = SqlConnection.dbConnector();
			Statement statement = con.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from listing");

			while (resultSet.next()) {
				Listing j = new Listing();
				j.setid(resultSet.getString("id"));
				j.setname(resultSet.getString("name"));
				j.setcategory(resultSet.getString("category"));
				j.setdesc(resultSet.getString("description"));
				j.setcost(resultSet.getString("cost"));
				j.setlocation(resultSet.getString("location"));
				j.setmobile(resultSet.getString("mobile"));
				j.setimage(resultSet.getBlob("image"));
				listings.add(j);
				
			}
			return listings;
		} catch (Exception e) {System.out.println(e);}
		return null;

	}
	
}
