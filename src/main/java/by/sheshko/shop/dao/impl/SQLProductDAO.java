package by.sheshko.shop.dao.impl;

import by.sheshko.shop.bean.Product;
import by.sheshko.shop.dao.DAOException;
import by.sheshko.shop.dao.ProductDAO;
import by.sheshko.shop.dao.pool.ConnectionPool;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class SQLProductDAO implements ProductDAO {

    private static final String PRODUCT_ID = "id_product";
    private static final String TITLE = "title";
    private static final String DESCRIPTION = "description";
    private static final String PRICE = "price";
    private static final String AVAILABLE_QUANTITY = "available_quantity";
    private static final String QUANTITY_IN_ORDERS = "quantity_in_orders";
    private static final String CATEGORIES = "SELECT * FROM products_categories";
    private final Logger log = LoggerFactory.getLogger(this.getClass());
    private final Map<Integer, String> categoriesMap = new HashMap<>();
    private Connection connection;

    {
        try {
            loadCategories();
        } catch (DAOException e) {
            log.error("Fail to load categories Map: {}", categoriesMap);
        }
    }

    @Override
    public Product loadProduct(Integer productId) throws DAOException {
        //loadCategories();
        return null;
    }

    private Connection connectToDataBase() throws DAOException {
        ConnectionPool connectionPool = ConnectionPool.getInstance();
        try {
            connection = connectionPool.takeConnection();
        } catch (InterruptedException e) {
            log.error("Error getting connection from connection pool queue", e);
            throw new DAOException("Error taking connection to database while getting product information", e);
        }
        return connection;
    }

    private void loadCategories() throws DAOException {

        PreparedStatement preparedStatement;
        ResultSet resultSet;

        try {
            connection = connectToDataBase();
            preparedStatement = connection.prepareStatement(CATEGORIES);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                categoriesMap.put(resultSet.getInt(1), resultSet.getString(2));
            }
            for (Map.Entry<Integer, String> entry : categoriesMap.entrySet()) {
                log.info("Value is {}, {}", entry.getKey(), entry.getValue()); //todo delete log
            }

            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            throw new DAOException("Internal error when loading categories of products", e);//todo адекватный эксепшн
        }
    }

}