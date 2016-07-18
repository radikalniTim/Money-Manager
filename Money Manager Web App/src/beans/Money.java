package beans;


public class Money{
	double moneySum=0;	
	double monthIncome=0;
	double savings=0;
	
	public Money (double monthIncome, double savings){
		this.savings = savings;
		this.monthIncome = monthIncome;
	}

	public Money (double monthIncome){
		this.monthIncome = monthIncome;
	}
	
	public void setIncome (double income){		
		moneySum += income;			
	}
	
	public void setOutcome (double outcome){
		moneySum -= outcome;
	}
	
	
	public double getBalance (){
		return moneySum;
	}
	
	public double getMonthIncome (){
		return monthIncome;
	}
}
