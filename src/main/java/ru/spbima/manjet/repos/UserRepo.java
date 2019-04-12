package ru.spbima.manjet.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.spbima.manjet.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
