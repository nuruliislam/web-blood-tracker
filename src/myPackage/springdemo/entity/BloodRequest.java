package myPackage.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="blood_request")
public class BloodRequest 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="patient_name")
	private String patientName;
	
	@Column(name="hospital_name")
	private String hospitalName;
	
	@Column(name="patient_address")
	private String patientAdress;
	
	@Column(name="contact_num")
	private String contactNum;
	
	@Column(name="refernce")
	private String refernce;
	
	public BloodRequest()
	{
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getHospitalName() {
		return hospitalName;
	}

	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}

	public String getPatientAdress() {
		return patientAdress;
	}

	public void setPatientAdress(String patientAdress) {
		this.patientAdress = patientAdress;
	}

	public String getContactNum() {
		return contactNum;
	}

	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}

	public String getRefernce() {
		return refernce;
	}

	public void setRefernce(String refernce) {
		this.refernce = refernce;
	}

	@Override
	public String toString() {
		return "BloodRequest [id=" + id + ", patientName=" + patientName + ", hospitalName=" + hospitalName
				+ ", patientAdress=" + patientAdress + ", contactNum=" + contactNum + ", refernce=" + refernce + "]";
	}
}
