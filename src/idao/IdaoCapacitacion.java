package idao;

import java.util.List;

import modelo.Capacitaciones;
import modelo.Visitas;


public interface IdaoCapacitacion {
	
	public boolean agregar(Capacitaciones capacitacion);
	public boolean eliminar (Capacitaciones capacitacion);
	public List<Capacitaciones> listar();

}
