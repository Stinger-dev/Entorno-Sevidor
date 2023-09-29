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
	
	
	public Calculadora(double num1, double num2, String operator) {
		super();
		this.num1 = num1;
		this.num2 = num2;
		this.operator = operator;
	}
	
	
	
	 public double operar() {
		return this.operator.equals("+")? this.num1 + this.num2 : this.num1 - this.num2;
	}
	
}
