/**
 * VARIABLES :
 * 
 * mario.x ou ennemi.x = position horizontale du personnage
 * mario.y ou ennemi.y = position verticale du personnage
 * mario.precedent.x ou ennemi.precedent.x = nombre position horizontale du personnage à la frame précédente
 * mario.precedent.y ou ennemi.precedent.x = position verticale du personnage à la frame précédente
 *
 * ACTIONS :
 *
 * mario.courirDroite()
 * mario.courirGauche()
 * mario.sauter()
 * mario.seBaisser()
 */

void choixAction(mario, ennemis)
{
	if (mario.hasKey == false){
		mario.courirDroite();
	} else {
		mario.courirGauche();
	}

	for (int i = 0; i < ennemis.size(); i++) {
	    ennemi = ennemis.get(i);

	    if (ennemi.x - mario.x < 35 && ennemi.x > mario.x){
	    	mario.sauter();
	    }
	}

    if (mario.x == mario.precedent.x) {
      mario.sauter();
    }
}