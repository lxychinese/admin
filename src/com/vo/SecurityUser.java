package com.vo;

import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Set;

/**
 * Created by YB on 2014/8/28.
 */
public class SecurityUser implements UserDetails {
    private Integer serverId;
    private String username;
    private String password;
    private String platform;
    private Set<String> groups;
    private Set<String> platforms;
    private Set<SecurityRole> authorities;

    public SecurityUser(String username, String password, Set<String> platformSet, Set<SecurityRole> authorities, Set<String> groups) {
        this.platforms = platformSet;
        this.username = username;
        this.password = password;
        this.authorities = authorities;
        this.groups = groups;
    }

    @Override
    public Collection<SecurityRole> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public Set<String> getPlatforms() {
        return platforms;
    }

    public void setPlatforms(Set<String> platforms) {
        this.platforms = platforms;
    }

    public Integer getServerId() {
        return serverId;
    }

    public void setServerId(Integer serverId) {
        this.serverId = serverId;
    }

    public Set<String> getGroups() {
        return groups;
    }

    public void setGroups(Set<String> groups) {
        this.groups = groups;
    }
}
