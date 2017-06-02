package edu.isi.ske.kefed.io.model;

import org.springframework.security.core.authority.AuthorityUtils;
import edu.isi.ske.kefed.io.model.Role;

public class CurrentUser extends org.springframework.security.core.userdetails.User {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;

    public CurrentUser(User user) {
        super(user.getUsername(), user.getPassword(), AuthorityUtils.createAuthorityList(user.getRole().toString()));
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public Role getRole() {
        return user.getRole();
    }
}