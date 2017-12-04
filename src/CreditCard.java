public class CreditCard
{
    private int cardNo;
    private long balance;
    private String expiryDate;
    private int cvc;
    private int limit;
    int rewardPoints;
    private CardMember member;
    private CardIssuer issuer;

    public CreditCard(int cardNo, long balance, String expiryDate, int cvc, int limit, int rewardPoints, CardMember member, CardIssuer issuer)
    {
        this.cardNo = cardNo;
        this.expiryDate = expiryDate;
        this.cvc = cvc;
        this.limit = limit;
        this.rewardPoints = rewardPoints;
        this.member = member;
        this.issuer = issuer;
    }


    public int getCardNo() {
        return cardNo;
    }

    public String getExpiryDate() {
        return expiryDate;
    }

    public int getCvc() {
        return cvc;
    }

    public int getLimit() {
        return limit;
    }

    public CardMember getMember() {
        return member;
    }

    public CardIssuer getIssuer() {
        return issuer;
    }
}
