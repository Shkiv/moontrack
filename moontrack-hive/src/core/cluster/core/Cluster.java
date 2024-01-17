package core.cluster.core;

import java.io.Serializable;

import core.cluster.IChannelProvider;
import core.cluster.core.manager.ServiceManager;

public class Cluster {

	protected InMemoryStorageTrackResultHandler trackResultHandler;

	public Cluster(ServiceManager serviceManager, String groupType, String targetService) {
		// TODO Auto-generated constructor stub
	}

	public void track(Serializable msg) {
		// TODO Auto-generated method stub
		
	}

	public void init(IChannelProvider provider) {
		// TODO Auto-generated method stub
		
	}

	protected void onShutdown() {
		// TODO Auto-generated method stub
		
	}

}
