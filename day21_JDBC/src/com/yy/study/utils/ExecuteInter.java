package com.yy.study.utils;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public interface ExecuteInter {
     Statement execute(Connection conn) throws SQLException;
}
