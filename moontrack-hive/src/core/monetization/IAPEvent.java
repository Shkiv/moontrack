package core.monetization;

import java.util.Date;

import com.moonmana.events.IEvent;

public class IAPEvent implements IEvent {

	public int playerId;
	public int type;
	public float price;
	public PurchaseInfo purchaseInfo;
	public Date date;

}
