package aplikacja;

import java.util.List;

public interface dbSlave {
	
    public void saveOrUpdate(maszyny maszyny);
    
    public void delete(int maszynyId);
     
    public List<maszyny> list();
		
}
