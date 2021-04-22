package com.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.TodoDao;
import com.entities.Todo;


@Controller
public class HomeCtrl {

	@Autowired
	TodoDao todoDao;
	
	@RequestMapping("/home")
	public String home(Model m)
	{
		//model ka object to send data from controller to view jsp page 
		
		String str="home";
		m.addAttribute("page",str);
		List<Todo> list=todoDao.getAll();
		
		m.addAttribute("list",list);
		return "home";
	}
	
	@RequestMapping("/add")
	public String addTodo(Model m)
	{
		Todo t= new Todo();
		m.addAttribute("page","add");
		
	 
		m.addAttribute("todo", t);
		return "home";
	}
	
	@RequestMapping(value = "/saveTodo",method = RequestMethod.POST)
	public String saveTodo(@ModelAttribute("todo") Todo t,Model m)
	{
		t.setTodoDate(new Date());
		System.out.println(t);
		todoDao.save(t); 
		return "home";
	}
	
	
	
	@RequestMapping(value = "/updateTodo/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    public String updateCountry(@PathVariable("id") int id,Model model) {
        model.addAttribute("todo", todoDao.getTodo(id));
        model.addAttribute("listOftodo", todoDao.getAll());
        return "update";
    }
	
}
