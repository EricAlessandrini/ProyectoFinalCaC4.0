package models;

public class Orador extends Persona {

	private String tema;
	
	public Orador(String nombre, String apellido, String tema) {
		super(nombre, apellido);
		this.tema = tema;
	}
	
	public String toString() {
		return this.getNombre() + " " 
				+ this.getApellido() + "\n"
				+ this.tema;
	}
}
