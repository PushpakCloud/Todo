package com.dao;

import java.util.List;

import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.entities.Todo;

@Component
public class TodoDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int save(Todo t)
	{
		Integer i=(Integer)this.hibernateTemplate.save(t);
		return i;
	}
	
	public List<Todo> getAll()
	{
		     List<Todo> list=this.hibernateTemplate.loadAll(Todo.class);
		     return list;
	}
	
	@Transactional
	public Todo getTodo(int todoId)
	{
		Todo todo=this.hibernateTemplate.load(Todo.class,todoId);
		return todo;
	}
}
