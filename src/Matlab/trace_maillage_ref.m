function trace_maillage_ref(S)
%function trace_maillage_ref(nbn,nbe,nba,coord,tri,ar,refn,reft,refa)
xt=S.coord(:,1); yt=S.coord(:,2); zt=zeros(size(xt));

hfig=figure(1); clf; hold on;
set(hfig,'Position',[200 10 1000 700]);
%subplot(212)
hmesh=trimesh(S.tri,xt,yt,zt);
title(sprintf('REFERENCES du Maillage El�ments Finis de type P1 (%d triangles, %d noeuds, %d aretes)',S.nbe,S.nbn,S.nba))
xlabel('axe Ox'); ylabel('axe Oy'); axis equal;

for i=1:length(xt) % noeuds
  h=text(xt(i),yt(i),num2str(S.refn(i))); 
  set(h,'Color','r');
end

for k=1:length(S.tri(:,1)) % triangles
  i1=S.tri(k,1); i2=S.tri(k,2); i3=S.tri(k,3);
  xm=(xt(i1)+xt(i2)+xt(i3))/3; ym=(yt(i1)+yt(i2)+yt(i3))/3;
  h=text(xm,ym,num2str(S.reft(k))); 
  set(h,'Color','k');
end

for a=1:length(S.ar(:,1)) % aretes
  i1=S.ar(a,1); i2=S.ar(a,2);
  xm=(xt(i1)+xt(i2))/2; 
  ym=(yt(i1)+yt(i2))/2;
  h=text(xm,ym,num2str(S.refa(a)));
  set(h,'Color','b');
end

axis([min(xt) max(xt) min(yt) max(yt)]); 
