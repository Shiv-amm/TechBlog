package com.dao;

import com.entities.User;
import java.sql.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;
        try {
            System.out.println("Saving user to database: " + user);

            String query = "insert into user(name,email,password,gender) values(?,?,?,?)";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getName());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getPassword());
            pt.setString(4, user.getGender());

            if (pt.executeUpdate() != 0) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from user where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user = new User();
                String name = set.getString("name");
                user.setName(name);
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
}
