package com.Dao;

public interface DBINFO {

    String driver = "oracle.jdbc.OracleDriver";

    String dburl = "jdbc:oracle:thin:@localhost:1521:free";

    String dbuname = System.getenv("DB_USERNAME");

    String dbpwd = System.getenv("DB_PASSWORD");
}