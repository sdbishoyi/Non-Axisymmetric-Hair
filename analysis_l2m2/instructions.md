# Terminology

bbscalar means Beetle-Burko scalar.

hair is the transverse(in this case radial i.e. \partial_{r}) 
derivative of the bbscalar.

Ori-coefficients are the constants that appear in the Ori-expansion.


These are a set of instructions for running files in this folder. The primary files are

1.bbscalar_vs_t.m
2.hair_vs_t.m
3.oricoeffs_vs_r.m
4.oricoeffs_vs_hair.m
5.p&q_regression.m

(4) depends on (2) and (3). So they have to run before running (4). 
(5) depends on (3)

# Notes

newdata_analysis.ipynb uses data that is low resolution in time. But with a larger spactial extent. 

olddata_analysis.ipynb uses higher resolution data in time but much smaller spatial extent.