package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conector.ConexionSingleton;
import idao.IdaoCliente;
import modelo.Clientes;

public class DaoCliente implements IdaoCliente {

	@Override
	public boolean agregar(Clientes cliente) {
		// TODO Auto-generated method stub
		boolean agregar = false;
		
		Statement stm = null;
		Connection con = null;
		
		//String sql = "INSERT INTO Cliente VALUES (null,'" + cliente.getNombreCliente() + "','" + cliente.getTelefonoCliente() 
		//+ "','" + cliente.getEmailCliente() + "','" + cliente.getRubroCliente() + "','"+ cliente.getDireccionCliente() + "')";
		
		String sql = "INSERT INTO Clientes VALUES (null,'" + cliente.getNombreCliente() + "','" + cliente.getTelefonoCliente() 
		+ "','" + cliente.getEmailCliente() + "','" + cliente.getRubroCliente() + "','"+ cliente.getDireccionCliente() + "')";
		System.out.println("Valor sql: " + sql);
		try {
			con = ConexionSingleton.getConnection();
			System.out.println("Valor con despues de con = ConexionSingleton.getConnection() " + con);
			stm = con.createStatement();
			stm.execute(sql);
			agregar = true;
			stm.close();
			System.out.println("Si me lees es porque se agrego el nuevo cliente con EXITO");
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error en DaoClientes.agregar()");
			System.out.println("Valor del evento e: " + e);
			e.printStackTrace();
		}
		
		return agregar;
	}

	@Override
	public List<Clientes> listar() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean eliminar(Clientes cliente) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean actualizar(Clientes cliente) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Clientes buscar(int clienteid) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
