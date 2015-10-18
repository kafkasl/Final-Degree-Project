x_par=[4,8,16];
y_par=[6.08, 6.012, 6.11];
x_mpi=[4,8,16,32,64];
y_mpi=[9.6, 7.1, 12.1, 13.02 , 13.2];
x_compss=[32, 48 ,64];
y_compss=[24.3, 23, 24.26];
figure(1);
plot(x_par(:),y_par(:),x_mpi(:),y_mpi(:),x_compss(:),y_compss(:));
title('Execution times for small.pdb dataset');
xlabel('Number of threads');
ylabel('Time (s)');
legend('Multiprocessing','MPI', 'COMPSs', 'location', 'northwest')
axis([4, 64]);
xbounds = xlim();
set(gca, 'xtick', xbounds(1):4:xbounds(2))
print('./img/small_graphs.png','-dpng','-r600');
