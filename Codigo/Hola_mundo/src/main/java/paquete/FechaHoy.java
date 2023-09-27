package paquete;
import java.time.LocalDate;

public class FechaHoy {

	public static String getFecha() {
		return LocalDate.now().toString();	
	}
}
