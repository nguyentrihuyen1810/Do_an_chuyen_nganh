package dao;

import config.SecurityConfig;
import model.Account;

import java.util.HashMap;
import java.util.Map;

public class DataDAO {
    private static final Map<String, Account> mapUsers = new HashMap<String, Account>();

    static {
        initUsers();
    }

    private static void initUsers() {

        // User này có 1 vai trò là EMPLOYEE.
        Account user = new Account("user", "123123", SecurityConfig.ROLE_USER);

        // User này có 2 vai trò EMPLOYEE và MANAGER.
        Account admin = new Account("admin", "123123", SecurityConfig.ROLE_ADMIN, SecurityConfig.ROLE_USER);

        mapUsers.put(admin.getUsername(), admin);
        mapUsers.put(user.getUsername(), user);
    }

    // Tìm kiếm người dùng theo userName và password.
    public static Account findUser(String userName, String password) {
        Account u = mapUsers.get(userName);
        if (u != null && u.getPassword().equals(password)) {
            return u;
        }
        return null;
    }

}
