PROJECT4FINAL

In this project I was tasked to implement 2 algorithms of my choosing. Both algorithms must be able to solve the same question also of my choosing.

For this project I decided to implement Dijkstra and Bellman Ford algorithms in order to find the shortest distance from one vertex to all of the others on a graph.

I created my own graph class in order to properly read in the data I created. The input data files are arranged as follows:
1) The number of vertices is on the first line
2) below that is a list of all of the vertexes found in the graph
3) Next is "[untitled]" which signifies the end of the vertex list and the begining of the edge and weight list
4) The edge and weight list is composed of a starting vertex, an ending vertex, and then the weight of this edge. Example below
        A B 4
        In this case A is a vertex connected to vertex B with a weight of 4

For the purposes of this code all graphs are undirected and all weights on the graph are non-negative.