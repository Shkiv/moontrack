package analytics;

import com.moonmana.app.App;

import core.cluster.core.manager.IServiceApp;
import core.tomcat.ITomcatApp;
import core.tomcat.TomcatModule;

public class AnalyticsApp extends App implements ITomcatApp, IServiceApp {
	
	private TomcatModule tomcatModule = new TomcatModule();

	public AnalyticsApp() {
		tomcatModule.addListener(new MoontrackTomcatListener());
	}
	
	@Override
	public TomcatModule getTomcatModule() {
		return tomcatModule;
	}

}
