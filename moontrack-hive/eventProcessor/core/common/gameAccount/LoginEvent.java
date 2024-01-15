package core.common.gameAccount;

import java.util.Date;

import core.gameServer.gameAccount.playerSession.PlayerSession;
import core.tomcat.ClientLoginInfo;

public class LoginEvent {

	public Date date;
	public int realmUserId;
	public int dUserId;
	public ClientLoginInfo loginInfo;
	public Integer ipv4;
	public PlayerSession playerSession;

}
