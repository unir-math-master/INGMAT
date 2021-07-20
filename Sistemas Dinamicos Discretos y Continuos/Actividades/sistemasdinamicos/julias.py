import numpy as np
import matplotlib.pyplot as plt
import matplotlib.cm as cm

# Parameters
x_res, y_res = 300, 300
xmin, xmax = -1.5, 1.5
width = xmax - xmin
ymin, ymax = -1.5, 1.5
height = ymax - ymin

z_abs_max = 10
max_iter = 1000


def julia_set(c):
    # Initialise an empty array (corresponding to pixels)
    julia = np.zeros((x_res, y_res))

    # Loop over each pixel
    for ix in range(x_res):
        for iy in range(y_res):
            # Map pixel position to a point in the complex plane
            z = complex(ix / x_res * width + xmin,
                        iy / y_res * height + ymin)
            # Iterate
            iteration = 0
            while abs(z) <= z_abs_max and iteration < max_iter:
                z = z**2 + c
                iteration += 1
            iteration_ratio = iteration / max_iter    
            # Set the pixel value to be equal to the iteration_ratio
            julia[ix, iy] = iteration_ratio

    # Plot the array using matplotlib's imshow
    fig, ax = plt.subplots()
    ax.imshow(julia, interpolation='nearest', cmap=cm.gnuplot2)
    plt.axis('off')
    plt.show()
    fig.savefig('julia_set.png', dpi=500)