import bezier
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
nodes = np.asfortranarray([
[0, 1, 3, 4, 5, 6, 7],
[-1, 2, 0, 1, 0, 2, -1],
])
curve = bezier.Curve(nodes, degree=6)
fig, ax = plt.subplots(figsize=(10, 15))
sns.lineplot(x=nodes[0], y=nodes[1],
curve.plot(num_pts=100, ax=ax)
markers=True, ax=ax
lines = ax.plot(nodes[0, :], nodes[1, :],marker="o", linestyle="None",
color="black")
ax.axis("scaled")
ax.grid(True, axis='both')
plt.show()