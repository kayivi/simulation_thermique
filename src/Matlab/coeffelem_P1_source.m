function Fl=coeffelem_P1_source(x,y)
% ------------------------------------------------------------------
% calcul du vecteur source elementaire Fl 3x1 en EF-P1
% utilisation d'une formule d'integration numerique exacte sur P1
% x(1:3) = abscisses des 3 sommets du triangle
% y(1:3) = ordonnees des 3 sommets du triangle
% ------------------------------------------------------------------
% Copyright: F.Lefèvre (Univ. Reims, 2018)
% ------------------------------------------------------------------

B=[x(2)-x(1) x(3)-x(1);
   y(2)-y(1) y(3)-y(1)];

mesT=0.5*abs(det(B));

% quadrature du PT MILIEU: d'ordre 1
xm=( x(1)+x(2)+x(3) )/3.0;
ym=( y(1)+y(2)+y(3) )/3.0;
Fl=mesT/3.0*fonc_f(xm,ym).*ones(3,1);

