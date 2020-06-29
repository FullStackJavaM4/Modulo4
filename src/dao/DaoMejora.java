package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conector.ConexionSingleton;
import idao.IdaoMejora;
import modelo.Mejoras;

public class DaoMejora implements IdaoMejora {

	@Override
	public boolean agregar(Mejoras mejora) {
		// TODO Auto-generated method stub
		boolean agregar = false;
		
		Statement stm = null;
		Connection con = null;
				
		String sql = "INSERT INTO Mejoras VALUES (null,'" 
					+ mejora.getFechaMejora() + "','" 
					+ mejora.getMotivoMejora() + "','" 
					+ mejora.getActividadesMejora() + "','" 
					+ mejora.getEstadoMejora() + "','"
					+ mejora.getIdClienteMejora() + "')";
		
		System.out.println("Valor sql: " + sql);
		
		try {
			con = ConexionSingleton.getConnection();
			System.out.println("Valor con despues de con = ConexionSingleton.getConnection() " + con);
			stm = con.createStatement();
			stm.execute(sql);
			agregar = true;
			stm.close();
			System.out.println("Si me lees es porque se agrego el nuevo mejora con EXITO");
			//con.close();
		}catch(SQLException e) {
			System.out.println("Error en DaoMejoras.agregar()");
			System.out.println("Valor del evento e: " + e);
			e.printStackTrace();
		}
		
		return agregar;
	}

	@Override
	public List<Mejoras> listar() {
				
		return null;
	}

	@Override
	public boolean eliminar(Mejoras mejora) {
		
		return false;
	}

	@Override
	public boolean actualizar(Mejoras mejora) {
		
		return false;
	}

	
	@Override
	public Mejoras buscar(int mejoraid) {
				
		return null;
	}
	
	

}
