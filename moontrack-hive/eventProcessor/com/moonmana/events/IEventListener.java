package com.moonmana.events;

public interface IEventListener<T extends IEvent> {
	boolean process(T event);
}