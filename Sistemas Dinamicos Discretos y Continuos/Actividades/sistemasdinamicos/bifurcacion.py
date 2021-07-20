from tqdm import tqdm
import matplotlib.pyplot as plt
import numpy as np

def LogisticMap():
    mu = np.arange(-2, 2, 0.0001)
    x = 0.01  # Valor inicial
    iters = 1000  # Número de iteraciones sin salida
    last = 100  # Finalmente dibuje el número de iteraciones del resultado
    for i in tqdm(range(iters+last)):
        x = x**2 - 2*mu + 1
        #x = x**2 + mu
        if i >= iters:
            plt.plot(mu, x, ',b', alpha=0.25)  # alphaSet transparencia
    
    #plt.scatter([0.6,0.8,1,1.1],[0,0,0,0])
    plt.axvline(x=0.5)
    plt.axvline(x=1)
    plt.axvline(x=1.15)
    #plt.axvline(x=1.19)

    #plt.axhline(y=0.5)

    plt.title("Diagrama de bifurcación")
    plt.xlabel("$\gamma$")
    plt.ylabel("$Z_n$")
    plt.show()
    plt.grid(True)

LogisticMap()