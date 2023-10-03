package utilities;

public class Calculadora {

	public static double calc(String cadena) throws Exception  {
		double resultado = 0;
		try {
			cadenaValida(cadena);
			String[] divididosMas = cadena.split("\\+");
			for (String tmpCadena : divididosMas) {
				String[] divididoMenos = tmpCadena.split("-");
				resultado += restar(divididoMenos);
			}
		} catch (Exception e) {
			throw new Exception("Syntax error");
		}	
		return resultado;
	}
	
	private static void  cadenaValida(String cadena) throws Exception {
		String[] divididosMas = cadena.split("\\+");
		if (!sinVacios(divididosMas)) {
			throw new Exception("Syntax error");
		}else {		
			for (String tmpCadena : divididosMas) {
				String[] divididoMenos = tmpCadena.split("-");
				if (!sinVacios(divididoMenos)) {
					throw new Exception("Syntax error");
				}
			}
		}
	}
	
	private static boolean sinVacios(String[] cadenas) {
		boolean resultado = true;
		int k = 0;
		while(resultado && k< cadenas.length){
			if (cadenas[k].isEmpty()) {
				resultado = false;
			}
			k++;
		}
		return resultado;
	}	
	
	private static double restar(String[] cadenaSeparadaPorMenosYMas) {
		double resultado = Double.parseDouble(cadenaSeparadaPorMenosYMas[0]);
		for(int i = 1; i< cadenaSeparadaPorMenosYMas.length; i++) {
			resultado -= Double.parseDouble(cadenaSeparadaPorMenosYMas[i]);
		}
		return resultado;
	}

}
