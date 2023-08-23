
public class TestaSistema {
	
	
	public static void main(String[] args) {
		
		
		Gerente g = new Gerente();
		
	Administrador adm = new Administrador();
		adm.setSenha(222);
	
		
		
		SistemaInterno si = new SistemaInterno();
		si.autentica(g);
		si.autentica(adm);

		
	}
	

}
