package amex.challenge;

public class CardIssuer {
	private int id;
	private long balance;
	
	public CardIssuer(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}
	
	public long getBalance() {
		return balance;
	}
	
	public void setBalance(long balance) {
		this.balance = balance;
	}
}
