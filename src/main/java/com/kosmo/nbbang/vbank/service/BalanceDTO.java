package com.kosmo.nbbang.vbank.service;

public class BalanceDTO {

	public String apiTranId;
	public String rspCode;
	public String rspMessage;
	public String apiTranDtm;
	public String bankTranId;
	public String bankTranDate;
	public String bankCodeTran;
	public String bankRspCode;
	public String bankRspMessage;
	public String fintechUseNum;
	public String balanceAmt;
	public String availableAmt;
	public String accountType;
	public String productName;
	public String bankName;
	public String savingsBankName;
	public String accountIssueDate;
	public String maturityDate;
	public String lastTranDate;
	public String email;
	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getApiTranId() {
		return apiTranId;
	}
	public void setApiTranId(String apiTranId) {
		this.apiTranId = apiTranId;
	}
	public String getRspCode() {
		return rspCode;
	}
	public void setRspCode(String rspCode) {
		this.rspCode = rspCode;
	}
	public String getRspMessage() {
		return rspMessage;
	}
	public void setRspMessage(String rspMessage) {
		this.rspMessage = rspMessage;
	}
	public String getApiTranDtm() {
		return apiTranDtm;
	}
	public void setApiTranDtm(String apiTranDtm) {
		this.apiTranDtm = apiTranDtm;
	}
	public String getBankTranId() {
		return bankTranId;
	}
	public void setBankTranId(String bankTranId) {
		this.bankTranId = bankTranId;
	}
	public String getBankTranDate() {
		return bankTranDate;
	}
	public void setBankTranDate(String bankTranDate) {
		this.bankTranDate = bankTranDate;
	}
	public String getBankCodeTran() {
		return bankCodeTran;
	}
	public void setBankCodeTran(String bankCodeTran) {
		this.bankCodeTran = bankCodeTran;
	}
	public String getBankRspCode() {
		return bankRspCode;
	}
	public void setBankRspCode(String bankRspCode) {
		this.bankRspCode = bankRspCode;
	}
	public String getBankRspMessage() {
		return bankRspMessage;
	}
	public void setBankRspMessage(String bankRspMessage) {
		this.bankRspMessage = bankRspMessage;
	}
	public String getFintechUseNum() {
		return fintechUseNum;
	}
	public void setFintechUseNum(String fintechUseNum) {
		this.fintechUseNum = fintechUseNum;
	}
	public String getBalanceAmt() {
		return balanceAmt;
	}
	public void setBalanceAmt(String balanceAmt) {
		this.balanceAmt = balanceAmt;
	}
	public String getAvailableAmt() {
		return availableAmt;
	}
	public void setAvailableAmt(String availableAmt) {
		this.availableAmt = availableAmt;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getSavingsBankName() {
		return savingsBankName;
	}
	public void setSavingsBankName(String savingsBankName) {
		this.savingsBankName = savingsBankName;
	}
	public String getAccountIssueDate() {
		return accountIssueDate;
	}
	public void setAccountIssueDate(String accountIssueDate) {
		this.accountIssueDate = accountIssueDate;
	}
	public String getMaturityDate() {
		return maturityDate;
	}
	public void setMaturityDate(String maturityDate) {
		this.maturityDate = maturityDate;
	}
	public String getLastTranDate() {
		return lastTranDate;
	}
	public void setLastTranDate(String lastTranDate) {
		this.lastTranDate = lastTranDate;
	}
	
	@Override
	public String toString() {
		return "BalanceDTO [apiTranId=" + apiTranId + ", rspCode=" + rspCode + ", rspMessage=" + rspMessage
				+ ", apiTranDtm=" + apiTranDtm + ", bankTranId=" + bankTranId + ", bankTranDate=" + bankTranDate
				+ ", bankCodeTran=" + bankCodeTran + ", bankRspCode=" + bankRspCode + ", bankRspMessage="
				+ bankRspMessage + ", fintechUseNum=" + fintechUseNum + ", balanceAmt=" + balanceAmt + ", availableAmt="
				+ availableAmt + ", accountType=" + accountType + ", productName=" + productName + ", bankName="
				+ bankName + ", savingsBankName=" + savingsBankName + ", accountIssueDate=" + accountIssueDate
				+ ", maturityDate=" + maturityDate + ", lastTranDate=" + lastTranDate + "]";
	}
	
	

}
