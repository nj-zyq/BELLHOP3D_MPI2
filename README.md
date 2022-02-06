# BELLHOP3D_MPI2

- The folder **./Bellhop** and **./misc** is the source code of Bellhop. I just modified some lines of **bellhop3D.f90**.
- The folder **./my** is the input the output files.
- If you want to change the compiler or options, you have to modify the **Makefile**.
- The file **test.batch** is to submit a batch script to Slurm, a workload manager.

We use Sugon high performance computer platform.
The compiler is intelmpi-2020.1.217 (can be seen in test.batch).
The compile optimization options can be seen in Makefile.
