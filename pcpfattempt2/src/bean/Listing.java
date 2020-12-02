package bean;
import java.sql.Blob;

public class Listing {

	private String id;
	private String name;
	private String desc;
	private String cost;
	private String location;
	private String mobile;
	private Blob image;
	
	public String getid() {
		return id;
	}
	public void setid(String id) {
		this.id=id;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name=name;
	}
	
	public String getdesc() {
		return desc;
	}
	public void setdesc(String desc) {
		this.desc = desc;
	}
	public String getcost() {
		return cost;
	}
	public void setcost(String cost) {
		this.cost = cost;
	}
	public String getlocation() {
		return location;
	}
	public void setlocation(String location) {
		this.location = location;
	}
	public String getmobile() {
		return mobile;
	}
	public void setmobile(String mobile) {
		this.mobile = mobile;
	}
	public Blob getimage() {
		return image;
	}
	public void setimage(Blob image) {
		this.image = image;
	}
}
