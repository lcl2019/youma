package com.airi.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.airi.constant.CustomerStatus;
import com.airi.constant.Level;

public class Customer {
	private Long id;
	private String  no;
	private String name;
	private String region;
	private Long managerId;
	private String managerName;
	private Level level;
	private String levelLabel;//等级描述
	private int satisfy;//满意度
	private int credit;//信誉度
	private String address;
	private String zip;//邮编
	private String tel;
	private String fax;//传真
	private String website;//网址
	private String licenceNo;//合同号
	private String chieftain;//负责人
	private Long registeredCapital;//是否到账
	private Long annualTurnover;//来往账
	private String bank;
	private String bankAccount;//账号
	private String localTaxNo;//地税号
	private String nationalTaxNo;//国税号
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date created;
	private Long creator;
	private CustomerStatus status;
	private Boolean deleted;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public Long getManagerId() {
		return managerId;
	}
	public void setManagerId(Long managerId) {
		this.managerId = managerId;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public Level getLevel() {
		return level;
	}
	public void setLevel(Level level) {
		this.level = level;
	}
	public String getLevelLabel() {
		return levelLabel;
	}
	public void setLevelLabel(String levelLabel) {
		this.levelLabel = levelLabel;
	}
	public int getSatisfy() {
		return satisfy;
	}
	public void setSatisfy(int satisfy) {
		this.satisfy = satisfy;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getLicenceNo() {
		return licenceNo;
	}
	public void setLicenceNo(String licenceNo) {
		this.licenceNo = licenceNo;
	}
	public String getChieftain() {
		return chieftain;
	}
	public void setChieftain(String chieftain) {
		this.chieftain = chieftain;
	}
	
	public Long getRegisteredCapital() {
		return registeredCapital;
	}
	public void setRegisteredCapital(Long registeredCapital) {
		this.registeredCapital = registeredCapital;
	}
	public Long getAnnualTurnover() {
		return annualTurnover;
	}
	public void setAnnualTurnover(Long annualTurnover) {
		this.annualTurnover = annualTurnover;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}
	public String getLocalTaxNo() {
		return localTaxNo;
	}
	public void setLocalTaxNo(String localTaxNo) {
		this.localTaxNo = localTaxNo;
	}
	public String getNationalTaxNo() {
		return nationalTaxNo;
	}
	public void setNationalTaxNo(String nationalTaxNo) {
		this.nationalTaxNo = nationalTaxNo;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public Long getCreator() {
		return creator;
	}
	public void setCreator(Long creator) {
		this.creator = creator;
	}
	public CustomerStatus getStatus() {
		return status;
	}
	public void setStatus(CustomerStatus status) {
		this.status = status;
	}
	public Boolean getDeleted() {
		return deleted;
	}
	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}
    
	
	

}
