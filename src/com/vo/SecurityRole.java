package com.vo;

import org.springframework.security.core.GrantedAuthority;

/**
 * Created by YB on 2014/8/28.
 */
public class SecurityRole implements GrantedAuthority {
    private String name;
    private String desc;

    public SecurityRole(String name, String desc) {
        this.name = name;
        this.desc = desc;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Override
    public String getAuthority() {
        return name;
    }
}
