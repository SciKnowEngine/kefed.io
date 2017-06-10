package edu.isi.ske.kefed.io.model;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.security.core.GrantedAuthority;

@Document(indexName = "user", type = "user", shards = 1, replicas = 0, refreshInterval = "-1")
public class User {

	@Id
	private String id;
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

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
    
    
}