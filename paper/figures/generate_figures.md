This file contains instructions on how to generate figures for my future self to be able to
recall. The files used for making the figures and their associated .ipynb notebooks are listed below:

bbscalar_vs_t.m
hair_vs_t.m
oricoeffs_vs_r.m
oricoeffs_vs_hair.m

hair_convergence.m
falloff.m

when these files are run, the plots are saved in the folder plots_l2m2. I feel it's best to keep analysis, data and plots of different (l,m) modes separate. We can always collate them to include in papers later.

The first 4 files were first made for l=m=2 only. Similar such files will have to be made for other modes like l=m=3 or l=3,m=2 and so on.

One has to remember/notedown the sizes of the fonts used to generate the x-labels and y-labels, also the legends. I think its 16 but I am not sure. I am using .fig files and making changes in them according to the requirements. Then we save them in .png and .pdf format according to requirement.

On 05/26/2024 --> cropping the pdf does the trick. Find "pdfcandy.com". Save from matlab as pdf then crop the pdf. The image doesn't pixellate when zoomed in. If the website asks you for email, then clear the cookies and use cropping again.

On 07/03/2024 --> To produce values of the exponents p and q for l=m=2, we use the r range r(5)~1.0612 to r(640)~20.0072. The model is a*r^(-q)*(r-1)^(-p). 