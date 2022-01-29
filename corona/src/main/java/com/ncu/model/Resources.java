package com.ncu.model;



	import javax.validation.constraints.NotNull;
	import javax.validation.constraints.Pattern;
	import javax.validation.constraints.Size;

	


	public class Resources {
		
			
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPno() {
			return pno;
		}
		public void setPno(String pno) {
			this.pno = pno;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		
		public String getResource() {
			return resource;
		}
		public void setResource(String resource) {
			this.resource = resource;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		@NotNull(message="is required")
		@Size(min=2, message="is required")
		private String name;
		@Pattern(regexp= "[0-9]{10}", message="Only 10 digits allowed")
		private String pno;
		@NotNull(message="is required")
		@Pattern(regexp= "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$", message="email required")
		private String email;
		private String state;
		private String resource;
		@NotNull(message="is required")
		private String address;
		@NotNull(message="is required")
	    private int quantity;
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		@Override
		public String toString() {
			return "Resources [name=" + name + ", pno=" + pno + ", email=" + email + ", state=" + state + ", resource="
					+ resource + ", address=" + address + ", quantity=" + quantity + "]";
		}
	}


