package core.hibernate.idGenerator;

import java.io.Serializable;

public interface Identifiable<T extends Serializable> {

	Integer getId();

}
