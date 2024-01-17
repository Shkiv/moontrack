package moontrack.analytics.communication.abtest;

import core.cluster.core.MessageProcessor;
import hive.model.abtest.AbTest;

public class AbtestArchivedProcessor extends MessageProcessor<AbtestArchivedMessage> {

	public AbtestArchivedProcessor(AbtestArchivedMessage message) {
		super(message);
	}

	@Override
	protected void perform() {
		transaction = session.beginTransaction();

		AbTest abtest = session.get(AbTest.class, message.getId());
		abtest.setArchived(true);
		session.update(abtest);

		transaction.commit();
	}

}
