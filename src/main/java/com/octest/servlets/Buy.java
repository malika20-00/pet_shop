package com.octest.servlets;

import java.util.ArrayList;

public class Buy {

	

    ArrayList<LigneBuy> lignesBuy;

    public Buy()
    {
        lignesBuy = new ArrayList<LigneBuy>();
    }

    @Override
    public String toString()
    {
        String s = "Panier : \n";
        for (LigneBuy l : lignesBuy)
        {
            s += l.toString() + "\n";
        }

        return s;

    }

    
    
    public void addPet(Pet p)
    {
        for (LigneBuy ligneBuy : lignesBuy)
        {
            if (ligneBuy.getPet().getId() == p.getId())
            {
                ligneBuy.setQuantity(ligneBuy.getQuantity() + 1);
                return;
            }
        }

        lignesBuy.add(new LigneBuy(p, 1));
    }

    public void sousPet(Pet p)
    {
        for (LigneBuy ligneBuy : lignesBuy)
        {
            if (ligneBuy.getPet().getId() == p.getId())
            {
                if (ligneBuy.getQuantity() > 1)
                {
                    ligneBuy.setQuantity(ligneBuy.getQuantity() - 1);
                } else
                {
                    lignesBuy.remove(ligneBuy);
                    return ;
                }
            }
        }
    }

    public int getNumberArticle()
    {
        return lignesBuy.size();
    }

    public ArrayList<LigneBuy> getLignesBuy()
    {
        return lignesBuy;
    }
                   
}
	
