package com.niit.userdaoimpl;

import java.util.List;


import javax.transaction.Transactional;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.User;
import com.niit.userdao.ProductDAO;
@Repository("productDAO")
@Transactional

public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory sessionFactory;

	public List<Product> findAllProducts() {
	return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	public Product findProductById(int ProductId) {
		
		return (Product)sessionFactory.getCurrentSession().createQuery("from Product where Id="+ProductId).uniqueResult();
		
	}

	public Product findProductByName(String ProductName) {
		
		return (Product)sessionFactory.getCurrentSession().createQuery("from Product where ProductName='"+ProductName+"'").uniqueResult();
 
	}

	public boolean addProduct(Product product) {
		sessionFactory.getCurrentSession().save(product);
		return true;
	}

	public boolean updateProduct(Product product) {
		sessionFactory.getCurrentSession().update(product);
		return true;
	}

	public boolean deleteProduct(int productId) {
	sessionFactory.getCurrentSession().delete(findProductById(productId));
		return true;
	}
	public List<Category> getAllCategories() {
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
		/*Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		return categories;*/	}
	
	public Product getProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.get(Product.class, id);
		//session.get(Product.class,id) -> select * from product where id=?
		return product;
	}

	
	
}