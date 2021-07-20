import numpy as np
import matplotlib.pyplot as plt

xdi = -3
xdf = 3
paso = 0.01

c = 3/8
x = np.arange(xdi, xdf, paso)
funcion = lambda t: t**2 - 2*c + 1
y = funcion(x)

plt.plot(x, x, color="blue", label="$f(z) = z$")
plt.plot(x, y, color="green", label="$f(z) = z^2 - 2\gamma + 1$")

x0 = 0
itera = 1
limiteItera = 50

plt.plot([x0, x0], [x0, funcion(x0)], color = 'pink')
while funcion(x0) > xdi and funcion(x0) < xdf and itera < limiteItera:
    plt.plot([x0, funcion(x0)], [funcion(x0), funcion(x0)], color = 'r')
    x0 = funcion(x0)
    plt.plot([x0, x0], [x0, funcion(x0)], color = 'pink')
    itera += 1

#Ejes
plt.axhline(y=0, color='k')
plt.axvline(x=0, color='k')

plt.title("$\gamma = 3/8$")
plt.xlabel("$f(z)$")
plt.ylabel("$z$")

plt.grid(True)
plt.legend()
plt.show()