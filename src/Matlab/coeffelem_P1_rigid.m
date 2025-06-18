function Kl=coeffelem_P1_rigid(x,y)
% ------------------------------------------------------------------
% calcul de la matrice elementaire Kl 3x3 de rigidite pour EF P1
% calcul exact (sans intégration numérique)
% x(1:3) = abscisses des 3 sommets du triangle
% y(1:3) = ordonnees des 3 sommets du triangle
% ------------------------------------------------------------------
% Copyright: F.Lefèvre (Univ. Reims, 2018)
% ------------------------------------------------------------------

B=[x(2)-x(1) x(3)-x(1);
   y(2)-y(1) y(3)-y(1)];

mesT=abs(det(B))/2.0;

xm=( x(1)+x(2)+x(3) )/3;
ym=( y(1)+y(2)+y(3) )/3;

k11=0.25/mesT*( (x(2)-x(3))^2 + (y(2)-y(3))^2 );
k22=0.25/mesT*( (x(3)-x(1))^2 + (y(3)-y(1))^2 );
k33=0.25/mesT*( (x(1)-x(2))^2 + (y(1)-y(2))^2 );

k12=0.25/mesT*( -(x(1)-x(3))*(x(2)-x(3)) -(y(1)-y(3))*(y(2)-y(3)) );
k13=0.25/mesT*( -(x(1)-x(2))*(x(3)-x(2)) -(y(1)-y(2))*(y(3)-y(2)) );
k23=0.25/mesT*( -(x(2)-x(1))*(x(3)-x(1)) -(y(2)-y(1))*(y(3)-y(1)) );

Kl = [k11 k12 k13;...
      k12 k22 k23;...
      k13 k23 k33].*fonc_k(xm,ym);

