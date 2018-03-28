import networkx as nx
import matplotlib.pyplot as plt

G = nx.DiGraph()
G.add_edges_from([("pred.R", "rds"),
                  ("csv", "pred.R"),
                  ("csv", "plot.R"),
                  ("plot.R", "png"),
                  ("Rmd", "md"),
                  ("bib", "md"),
                  ("csl", "md"),
                  ("csv", "Rmd"),
                  ("rds", "Rmd"),
                  ("png", "Rmd"),
                  ("md", "html/pdf/docx/pptx")])
pos = {"Rmd": (0, 1),
       "plot.R": (-1, 2),
       "pred.R": (1, 2),
       "csv": (0, 2),
       "rds": (1, 1),
       "png": (-1, 1),
       "md": (0, 0),
       "bib": (-1, 0),
       "csl": (1, 0),
       "html/pdf/docx/pptx": (0, -1)
       }
lab = {("Rmd", "md"): "knitr",
       ("csv", "plot.R"): "readr",
       ("csv", "pred.R"): "readr",
       ("csv", "Rmd"): "readr",
       ("pred.R", "rds"): "readr",
       ("rds", "Rmd"): "readr",
       ("plot.R", "png"): "ggplot2",
       ("png", "Rmd"): "knitr",
       ("bib", "md"): "pandoc",
       ("csl", "md"): "pandoc",
       ("md", "html/pdf/docx/pptx"): "pandoc"
       }
nx.draw_networkx_edge_labels(G, pos, font_size=10, edge_labels=lab, rotate=False)
nx.draw(G, pos, with_labels=True, font_size=10, node_size=1600, node_color="white")
plt.show()

N = len(pos)
keys = list(pos.keys())

X = [pos[key][0] for key in keys]
Y = [pos[key][1] for key in keys]
