package edu.isi.ske.kefed.io.model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.security.core.GrantedAuthority;

import java.util.List;

@Data
@org.springframework.data.elasticsearch.annotations.Document(indexName = "user-index", type = "user", shards = 1, replicas = 0, refreshInterval = "-1")
public class User {

    @Id
    private String username;

    private String password;
    private List<GrantedAuthority> authorities;

    private Boolean enabled;

    private Role role;

    public User() {
    }

    public User(String username, String password, List<GrantedAuthority> authorities) {
        this.username = username;
        this.password = password;
        this.authorities = authorities;
        this.enabled = true;
        this.role = Role.ROLE_USER;
    }

    public User(String username, String password, List<GrantedAuthority> authorities, Boolean enabled, Role role) {
        this(username, password, authorities);
        this.enabled = enabled;
        this.role = role;
    }
}