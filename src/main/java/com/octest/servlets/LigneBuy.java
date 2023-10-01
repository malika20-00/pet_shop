package com.octest.servlets;
import com.octest.servlets.*;
public class LigneBuy {
	private Pet pet;
	private int Quantity;
	public LigneBuy(Pet pet, int quantity) {
		super();
		this.pet = pet;
		Quantity = quantity;
	}
	public Pet getPet() {
		return pet;
	}
	public void setPet(Pet pet) {
		this.pet = pet;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
    @Override
    public boolean equals(Object arg0) 
    {
            if(arg0 instanceof LigneBuy){
                    if(this.pet.equals(((LigneBuy) arg0).pet) && this.Quantity ==((LigneBuy) arg0).Quantity)
                            return true;
                    else
                            return false;
            }else
                   return false;
    }
    @Override
    public int hashCode() 
    {
         return pet.hashCode();
    }
    @Override
    public String toString() {
            return "LigneCommande : "+pet.toString()+" | "+this.Quantity;
    }
}

