package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.Paycheck;

public interface PaycheckRepository extends JpaRepository<Paycheck, Long> {
	List<Paycheck> findByMonth(String month);
}
