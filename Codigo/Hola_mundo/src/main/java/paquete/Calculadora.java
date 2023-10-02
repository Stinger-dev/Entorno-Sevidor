package paquete;

import lombok.Data;
import lombok.Setter;
import lombok.AllArgsConstructor;

@Data
@Setter
@AllArgsConstructor
public class Calculadora {
	private double num1;
	private double num2;
	private String operator;
	
	
	public Calculadora(String num1, String num2, String operator) throws Exception {
		super();
		if(num1 != null &&  num1 != null  && !num1.isEmpty() && !num2.isEmpty()) {
			this.num1 = Double.parseDouble(num1);			
			this.num2 = Double.parseDouble(num2);
			this.operator = operator;
		}

	}
	
	
	
	 public double operar() {
		return this.operator.equals("+")? this.num1 + this.num2 : this.num1 - this.num2;
	}
	
}
