package greencamp.camp.model;

public class CampDTO
{
	private int camp_no;
	private String camp_nm;
	private String addr;
	private String camp_telno;
	private String camp_type;
	private String lat;
	private String longti;
	private String cvntl;
	private String sffc;
	private String id;
	private String camp_theme;
	private String camp_surround;
	private int start;
	private int end;
	private int cp;
	private int ls;
	private String checkin;
	private String checkout;
	private String camp_dc;
	private String camp_ground;
	private String bizrno;
	private String camp_intro;
	
	public CampDTO()
	{
		super();
	}

	public CampDTO(int camp_no, String camp_nm, String addr, String camp_telno, String camp_type, String lat,
			String longti, String cvntl, String sffc, String id, String camp_theme, String camp_surround, int start,
			int end, int cp, int ls, String checkin, String checkout, String camp_dc, String camp_ground, String bizrno,
			String camp_intro)
	{
		super();
		this.camp_no = camp_no;
		this.camp_nm = camp_nm;
		this.addr = addr;
		this.camp_telno = camp_telno;
		this.camp_type = camp_type;
		this.lat = lat;
		this.longti = longti;
		this.cvntl = cvntl;
		this.sffc = sffc;
		this.id = id;
		this.camp_theme = camp_theme;
		this.camp_surround = camp_surround;
		this.start = start;
		this.end = end;
		this.cp = cp;
		this.ls = ls;
		this.checkin = checkin;
		this.checkout = checkout;
		this.camp_dc = camp_dc;
		this.camp_ground = camp_ground;
		this.bizrno = bizrno;
		this.camp_intro = camp_intro;
	}

	public int getCamp_no() {
		return camp_no;
	}

	public void setCamp_no(int camp_no) {
		this.camp_no = camp_no;
	}

	public String getCamp_nm() {
		return camp_nm;
	}

	public void setCamp_nm(String camp_nm) {
		this.camp_nm = camp_nm;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getCamp_telno() {
		return camp_telno;
	}

	public void setCamp_telno(String camp_telno) {
		this.camp_telno = camp_telno;
	}

	public String getCamp_type() {
		return camp_type;
	}

	public void setCamp_type(String camp_type) {
		this.camp_type = camp_type;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLongti() {
		return longti;
	}

	public void setLongti(String longti) {
		this.longti = longti;
	}

	public String getCvntl() {
		return cvntl;
	}

	public void setCvntl(String cvntl) {
		this.cvntl = cvntl;
	}

	public String getSffc() {
		return sffc;
	}

	public void setSffc(String sffc) {
		this.sffc = sffc;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCamp_theme() {
		return camp_theme;
	}

	public void setCamp_theme(String camp_theme) {
		this.camp_theme = camp_theme;
	}

	public String getCamp_surround() {
		return camp_surround;
	}

	public void setCamp_surround(String camp_surround) {
		this.camp_surround = camp_surround;
	}

	public int getStart() {
		start = (cp-1)*ls+1;
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		end = cp*ls;
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}

	public int getCp() {
		return cp;
	}

	public void setCp(int cp) {
		this.cp = cp;
	}

	public int getLs() {
		return ls;
	}

	public void setLs(int ls) {
		this.ls = ls;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public String getCamp_dc() {
		return camp_dc;
	}

	public void setCamp_dc(String camp_dc) {
		this.camp_dc = camp_dc;
	}

	public String getCamp_ground() {
		return camp_ground;
	}

	public void setCamp_ground(String camp_ground) {
		this.camp_ground = camp_ground;
	}

	public String getBizrno() {
		return bizrno;
	}

	public void setBizrno(String bizrno) {
		this.bizrno = bizrno;
	}

	public String getCamp_intro() {
		return camp_intro;
	}

	public void setCamp_intro(String camp_intro) {
		this.camp_intro = camp_intro;
	}
	
}
