package core.cluster.core;

import java.io.Serializable;
import java.util.Date;

import org.apache.catalina.tribes.Member;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class MessageProcessor <Mess extends Serializable> {

	protected Date currentDate;
	protected Session session = null;
	protected Transaction transaction = null;
	protected final Mess message;
	protected Member sender = null;
	
	public MessageProcessor(Mess message) {
		this.message = message;
	}

	protected void perform() {
		// TODO Auto-generated method stub
		
	}

	public void performStatic(Session session2, Date currentDate2, Member sender2) {
		// TODO Auto-generated method stub
		
	}

	protected boolean isStaticPerform() {
		// TODO Auto-generated method stub
		return false;
	}

	protected Session createSession() {
		// TODO Auto-generated method stub
		return null;
	}

	public void clean() {
		// TODO Auto-generated method stub
		
	}

	protected boolean shouldLog() {
		// TODO Auto-generated method stub
		return false;
	}

	public void init() {
		// TODO Auto-generated method stub
		
	}

}
