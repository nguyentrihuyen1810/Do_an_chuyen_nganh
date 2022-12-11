package model;

import java.util.ArrayList;
import java.util.List;

public class Account {
    private String username;
    private String password;

    private List<String> roles;

    public Account() {
    }

    public Account(String username, String password, String... roles) {
        this.username = username;
        this.password = password;

        this.roles = new ArrayList<String>();
        if(roles != null) {
            for (String r: roles) {
                this.roles.add(r);
            }
        }
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<String> getRoles() {
        return roles;
    }

    public void setRoles(List<String> roles) {
        this.roles = roles;
    }
}
