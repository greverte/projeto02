
package bd;

/**
 *
 * @author mirel
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.ArrayList;

public class BDF {
    private static ArrayList<Fornecedor> FornecedorList;
    public static ArrayList<Fornecedor> getFornecedorsList(){
    
    if(FornecedorList == null){
    FornecedorList = new ArrayList<>();
    
    Fornecedor c1 = new Fornecedor();
    
    c1.setNome ("Gabriel Reverte");
    c1.setrazao("Gabriel Reverte Razao Social");
    c1.setcnpj ("20.365.41/0001-91");
    c1.setEmail ("gabriel.reverte@fatec.com");
    c1.setTelefone("55 13 999887766");
    c1.setEndereco ("AV:Presidente Kennedy 777");
    FornecedorList.add(c1);
    Fornecedor c2 = new Fornecedor();
    
    c2.setNome ("Mirelle Gushimoto");
    c2.setrazao("Mirelle Gushomoto Razao Social");
    c2.setcnpj ("20.365.41/0001-91");
    c2.setEmail ("mirelle.gushimoto@fatec.com");
    c2.setTelefone ("55 13 911223344");
    c2.setEndereco ("AV: Presidente Kennedy 666");
    FornecedorList.add(c2);
    }
    return FornecedorList;
   
}
}
