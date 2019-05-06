package pl.coderslab.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import pl.coderslab.entity.Purchase;

public interface PurchaseRepository extends JpaRepository<Purchase, Long> {
	List<Purchase> findByMonth(String month);

	List<Purchase> findByName(String name);

	List<Purchase> findByPriceBetween(BigDecimal min, BigDecimal max);

	@Query("select p from Purchase p where p.month like ?1% and p.name like %?2% and p.price between ?3 and ?4")
	List<Purchase> findByDto(String month, String name, BigDecimal min, BigDecimal max);
}
