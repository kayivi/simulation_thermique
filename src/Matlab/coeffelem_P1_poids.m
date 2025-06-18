function Pa=coeffelem_P1_poids(x,y,Alpha)
% ----------------------------------------------------------------------
% calcul de la matrice transfert thermique Pa 2x2 en EF-P1 de l'arete a
% x(1:2) = abscisses des 2 sommets de l'arete a
% y(1:2) = ordonnees des 2 sommets de l'arete a
% Alpha  = facteur (cte sur l'arete) du transfert thermique
% ----------------------------------------------------------------------
% Copyright: F.Lefèvre (Univ. Reims, 2018)
% ----------------------------------------------------------------------

x1=x(1); y1=y(1);
x2=x(2); y2=y(2);

L = sqrt( (x2-x1)^2 + (y2-y1)^2 ); % :longueur de l'arete
xm=(x1+x2)/2.0;                    % :milieu   de l'arete
ym=(y1+y2)/2.0;                    % :milieu   de l'arete

% Calcul exact:
Pa = (L/6.0)*Alpha*[2 1; 1 2];     % :matrice 2x2 !
