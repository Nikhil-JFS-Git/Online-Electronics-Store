package com.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    public static Connection getConnection() {

        Connection con = null;

        try {

            if (DBINFO.dbuname == null || DBINFO.dbpwd == null) {
                throw new IllegalStateException(
                    "Database username or password is not configured."
                );
            }

            Class.forName(DBINFO.driver);

            con = DriverManager.getConnection(
                DBINFO.dburl,
                DBINFO.dbuname,
                DBINFO.dbpwd
            );

            System.out.println("Connected");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}