package config;

import java.util.*;

public class SecurityConfig {
    public static final String ROLE_ADMIN = "ADMIN";
    public static final String ROLE_USER = "USER";

    // String: Role
    // List<String>: urlPatterns.
    private static final Map<String, List<String>> mapConfig = new HashMap<String, List<String>>();

    static {
        init();
    }

    private static void init() {

        // Cấu hình cho vai trò "ADMIN".
        List<String> urlPatterns1 = new ArrayList<String>();

        urlPatterns1.add("/userInfo");
        urlPatterns1.add("/adminTask");

        mapConfig.put(ROLE_ADMIN, urlPatterns1);

        // Cấu hình cho vai trò "MANAGER".
        List<String> urlPatterns2 = new ArrayList<String>();

        urlPatterns2.add("/userInfo");
        urlPatterns2.add("/userTask");

        mapConfig.put(ROLE_USER, urlPatterns2);
    }

    public static Set<String> getAllAppRoles() {
        return mapConfig.keySet();
    }

    public static List<String> getUrlPatternsForRole(String role) {
        return mapConfig.get(role);
    }

}
