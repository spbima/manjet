package ru.spbima.manjet.repos;

import org.springframework.data.repository.CrudRepository;
import ru.spbima.manjet.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);
}
