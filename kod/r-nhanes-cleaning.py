import networkx as nx
import matplotlib.pyplot as plt

G = nx.DiGraph()
G.add_edges_from([("adult(x).dat", "adult.csv"),
                  ("exam.dat", "exam.csv"),
                  ("lab.dat", "lab.csv"),
                  ("mort.dat", "mort.csv"),
                  ("adult.csv", "core.csv"),
                  ("exam.csv", "core.csv"),
                  ("lab.csv", "core.csv"),
                  ("mort.csv", "core.csv")
                  ])
pos = {"adult(x).dat": (-1, 1),
       "exam.dat": (0, 1),
       "lab.dat": (1, 1),
       "mort.dat": (2, 1),
       "adult.csv": (-1, 0),
       "exam.csv": (0, 0),
       "lab.csv": (1, 0),
       "mort.csv": (2, 0),
       "core.csv": (1, -2)
       }
lab = {("adult(x).dat", "adult.csv"): "adult.sas",
       ("exam.dat", "exam.csv"): "exam.sas",
       ("lab.dat", "lab.csv"): "lab.sas",
       ("mort.dat", "mort.csv"): "mort.sas",
       ("adultx.csv", "core.csv"): "join.R",
       ("exam.csv", "core.csv"): "join.R",
       ("lab.csv", "core.csv"): "join.R",
       ("mort.csv", "core.csv"): "join.R"
       }
nx.draw_networkx_edge_labels(G, pos, font_size=10, edge_labels=lab, rotate=False)
nx.draw(G, pos, with_labels=True, font_size=10, node_size=1600, node_color="white")
plt.show()

N = len(pos)
keys = list(pos.keys())

X = [pos[key][0] for key in keys]
Y = [pos[key][1] for key in keys]
