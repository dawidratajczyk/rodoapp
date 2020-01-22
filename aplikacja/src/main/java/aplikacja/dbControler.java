package aplikacja;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;

@Controller
public class dbControler implements dbSlave{

	private JdbcTemplate jdbcTemp;
	
	
	 public dbControler(DataSource datasource) {
		 jdbcTemp = new JdbcTemplate(datasource);
	}
	
	@Override
	public void saveOrUpdate(maszyny maszyny) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int maszynyId) {
		// TODO Auto-generated method stub
		
	}

	

	@Override
	public List<maszyny> list() {
	    String sql = "SELECT material,operacja,czas FROM marszruta LIMIT 10";
	   
	    List<maszyny> marszrutaList = jdbcTemp.query(sql, new RowMapper<maszyny>() {
	 
	        @Override
	        public maszyny mapRow(ResultSet rs, int rowNum) throws SQLException {
	        	maszyny aMaszyny = new maszyny();
	 
	        	aMaszyny.setMaterial(rs.getString("material"));
	        	aMaszyny.setOperacje(rs.getString("operacja"));
	        	aMaszyny.setCzas(rs.getString("czas"));
	     
	 
	            return aMaszyny;
	        }

		
	 
	    });
	 
	    return marszrutaList;
	}

	
}
