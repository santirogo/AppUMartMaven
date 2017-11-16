package vo;

import java.util.ArrayList;

public class VendedorVO extends PersonaVO {
    
    
    private ArrayList<TiendaVO> tiendas;
    private boolean noti;

    public boolean isNoti() {
        return noti;
    }

    public void setNoti(boolean noti) {
        this.noti = noti;
    }

    public VendedorVO() {
        this.tiendas=new ArrayList<TiendaVO>();
    }


    public ArrayList<TiendaVO> getTiendas() {
        return tiendas;
    }
    
}
