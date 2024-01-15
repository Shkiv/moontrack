package core.gameServer.gameAccount.playerSession;

public class SessionCloseEvent {

	public int playerId;
	public final PlayerSessionCloseResult playerSessionCloseResult;
	
	public SessionCloseEvent(int playerId, PlayerSessionCloseResult result) {
		this.playerId = playerId;
		this.playerSessionCloseResult = result;
	}

}
