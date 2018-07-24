package com.mediwr.Mediware.domain.counter;

import org.springframework.data.mongodb.core.mapping.Document;

import com.mediwr.Mediware.domain.BaseEntity;

@SuppressWarnings("serial") 
@Document(collection = "Counter") 
public class Counter extends BaseEntity{ 
  
    private String name;
  
    private long sequence;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getSequence() {
		return sequence;
	}

	public void setSequence(long sequence) {
		this.sequence = sequence;
	}
  
    
} 
