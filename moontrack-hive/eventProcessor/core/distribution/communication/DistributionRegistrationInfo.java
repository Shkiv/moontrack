package core.distribution.communication;

import core.tomcat.ClientLoginInfo;
import moontrack.analytics.communication.UserServicesContainer;

public class DistributionRegistrationInfo {

	public int dUserId;
	public UserServicesContainer container;
	public byte userServiceId;
	public Integer ipv4;
	public ClientLoginInfo clientLoginInfo;

}
