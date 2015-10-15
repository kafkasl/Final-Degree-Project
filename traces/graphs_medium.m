x=[4,8,16,32,64,128,256];
x_par=[4,8,16];
y_par=[132.22, 105.66, 67.61];
x_mpi=[4,8,16,32,64];
y_mpi=[144.29, 97.6, 86.38,80.6,85.30];
x_compss=[32,70];
y_compss=[102.9,74.2];
figure(1);
plot(x_par(:),y_par(:),x_mpi(:),y_mpi(:),x_compss(:),y_compss(:));
xlabel('Number of threads');
ylabel('Time (s)');
legend('Multiprocessing','MPI', 'COMPSs')
print('./img/medium_graph.png','-dpng','-r600');
