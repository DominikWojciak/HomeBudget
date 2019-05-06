package pl.coderslab.entity;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "paychecks")
public class Paycheck {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String month;
	@CreationTimestamp
	private Date created;
	@Column(scale = 2)
	@NotNull
	private BigDecimal value;
	@Column(columnDefinition = "TEXT")
	private String description;

	@Override
	public String toString() {
		return String.format("Paycheck [id=%s, month=%s, created=%s, value=%s, description=%s]", id, month, created,
				value, description);
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public BigDecimal getValue() {
		return value;
	}

	public void setValue(BigDecimal value) {
		this.value = value;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public long getId() {
		return id;
	}

}
