/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paqueteagenda;

import java.util.ArrayList;

/**
 *
 * @author Mañanas
 */
public class PintarHTML {
    public static String crearLista(ArrayList<Contacto> lista)
    {
        String html="<ol>";
        for (Contacto contacto : lista) {
            html+="<li>"+contacto.getNombre()+": "+contacto.getEmail()+"</li>";
        }
        html+="</ol>";
        return html;
    }
    
}
