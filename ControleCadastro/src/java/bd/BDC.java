/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import java.util.ArrayList;

/**
 *
 * @author gabri
 */
public class BDC {
    private static ArrayList<Cliente> clientesList;
    public static ArrayList<Cliente> getClientesList(){
    
    if(clientesList == null){
    clientesList = new ArrayList<>();
    
    Cliente c1 = new Cliente();
    
    c1.setNome ("Gabriel Reverte");
    c1.setCpf ("59952363501");
    c1.setRg ("601232547");
    c1.setEmail ("gabriel.reverte@fatec.com");
    c1.setTelefone("55 13 999887766");
    c1.setEndereco ("AV:Presidente Kennedy 777");
    clientesList.add(c1);
    Cliente c2 = new Cliente();
    
    c2.setNome ("Mirelle Gushimoto");
    c2.setCpf ("54456352401");
    c2.setRg ("203654127");
    c2.setEmail ("mirelle.gushimoto@fatec.com");
    c2.setTelefone ("55 13 911223344");
    c2.setEndereco ("AV: Presidente Kennedy 666");
    clientesList.add(c2);
    }
    return clientesList;
   
}
}
