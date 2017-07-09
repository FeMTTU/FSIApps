#!/bin/bash

############################################

# Direct solver for time info
# ./fsisteady -input "./input/beam.neu" -rhof 1000 -muf 1 -rhos 1000 -E 1500000 -ni 0.5 -ic_bdc "./bdc/turek_beam_2d_benchmark/libcsm1_beam_turek_benchmark_bdc.so" -outer_ksp_solver "preonly" -max_outer_solver_iter 1 -nlevel 1 -nrefinement 1 -std_output CSM_1_preonly.txt > CSM_1_preonly.txt

# ############################################
# 
# # Multigrid solver for time info
./fsisteady -input "./input/beam.neu" -rhof 1000 -muf 1 -rhos 1000 -E 1500000 -ni 0.5 -ic_bdc "./bdc/turek_beam_2d_benchmark/libcsm1_beam_turek_benchmark_bdc.so" -outer_ksp_solver "gmres" -max_outer_solver_iter 60 -nrefinement 5  -nlevel 5  -std_output CSM1_5_mg.txt  > CSM1_5_mg.txt

# Multigrid solver for convergence and memory info
# ./fsisteady -input "./input/beam.neu" -rhof 1000 -muf 1 -rhos 1000 -E 1500000 -ni 0.5 -ic_bdc "./bdc/turek_beam_2d_benchmark/libcsm1_beam_turek_benchmark_bdc.so" -outer_ksp_solver "gmres" -max_outer_solver_iter 60 -ksp_monitor_true_residual -ksp_view -nrefinement 5  -nlevel 5  -mem_infos 1 -std_output CSM1_5_mg_mem.txt  > CSM1_5_mg_mem.txt
