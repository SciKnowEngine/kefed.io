package edu.isi.sciknowengine.kefed.io.model;

import org.springframework.security.core.authority.AuthorityUtils;

import edu.isi.sciknowengine.kefed.io.model.Role;

public class CurrentUser extends org.springframework.security.core.userdetails.User {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;

    public CurrentUser(User user2) {
        super(user2.getUsername(), user2.getPassword(), AuthorityUtils.createAuthorityList(user2.getRole().toString()));
        this.user = user2;
    }

    public User getUser() {
        return user;
    }

    public Role getRole() {
        return user.getRole();
    }
}