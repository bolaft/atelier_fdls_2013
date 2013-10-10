arrierePlan = false;

void choixAction(mario, ennemis)
{
	// Si Mario a la clef et qu'il ne se trouve pas en arrière plan Mario court vers la gauche
	if (mario.aLaClef == true && arrierePlan == false){ 
		directionDroite = false;
		mario.courirGauche();
	// Sinon Mario court vers la droite
	} else {
		directionDroite = true;
		mario.courirDroite();
	}

	// Pour chaque élément de la liste des ennemis
	for (i = 0; i < ennemis.size(); i++) {
	    ennemi = ennemis.get(i);

	    // Si Mario court vers la droite
	    if (directionDroite == true){
	    	// ... et si un ennemi se trouve à moins de 35 pixels à DROITE de Mario
		    if (ennemi.x - mario.x < 35 
		    	// ... et qu'il est à droite de Mario
		    	&& ennemi.x > mario.x){
		    	// alors Mario saute.
		    	mario.sauter();
		    }
		// Sinon
	    } else {
	    	// ... si un ennemi se trouve à moins de 35 pixels à GAUCHE de Mario
		    if (ennemi.x - mario.x > -35 
		    	// ... et qu'il est à gauche de Mario
		    	&& ennemi.x - mario.x < 0){
		    	// alors Mario saute.
		    	mario.sauter();
		    }
	    }
	}

	// Si Mario est à la même position horizontale qu'à la frame précédente (et donc, s'il est bloqué)
    if (mario.x == mario.precedent.x) {
    	// alors Mario saute
    	mario.sauter();
    }

	// Si Mario peut traverser un conduit, et s'il a la clef, et s'il ne se trouve pas déjà à l'arrière plan
    if (mario.peutTraverser == true && mario.aLaClef == true && arrierePlan == false){
    	// alors Mario se baisse
    	mario.seBaisser();
    	// on enregistre qu'on est passé à l'arrière-plan
    	arrierePlan = true;
    }
}