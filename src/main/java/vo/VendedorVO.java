package vo;

import java.util.ArrayList;

public class VendedorVO extends PersonaVO {
    
    
    private ArrayList<TiendaVO> tiendas;

    public VendedorVO() {
        this.tiendas=new ArrayList<TiendaVO>();
    }


    public ArrayList<TiendaVO> getTiendas() {
        return tiendas;
    }

    
}
