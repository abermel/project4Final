//
// Created by Amanda Bermel on 5/10/20.
//

#ifndef PROJECT4FINAL_GRAPH_H
#define PROJECT4FINAL_GRAPH_H

#include <string>
#include <list>
#include <set>
#include <vector>
#include <map>
#include <iostream>
#include <fstream>
#include <cmath>
using namespace std;

class Graph {
private:
    int V;
    int E;
    vector<string> vertecies;
    vector <pair <string, pair <string, int >>> *adj;

public:
    Graph(int, int, vector<string>);
    void setE(int);
    void addEdge(string, string, int);
    void runDijkstra(string, ostream&);
    void runBellman(string, ostream&);
};

Graph::Graph(int v, int E, vector<string> vs){
   V = v;
   adj = new vector <pair <string, pair <string, int >>>[v];

   for(int i = 0; i < V; i ++){
       vertecies.push_back(vs[i]);
   }
}

void Graph :: setE(int e){
    E = e;
}

void Graph:: addEdge(string v1, string v2, int weight) {
    adj->push_back(make_pair(v1, make_pair(v2, weight)));
}



void Graph::runDijkstra(string src, ostream & myfile){
    map<string, int> distances;
    map<string, bool> unvisited;

    for(int i = 0; i < V; i+=1){
        distances.insert({vertecies[i], INT_MAX});
        unvisited.insert({vertecies[i], true});
    }

    distances[src] = 0;


    for (int i = 0; i < V - 1; i++) {
        int min = INT_MAX;
        string min_index;
        string u;

        for(auto v : vertecies){
            if (unvisited[v] && distances[v] <= min) {
                min = distances[v];
                min_index = v;
            }
        }

        u = min_index;
        unvisited[u] = false;
        bool trying;
        int te;
        pair<string,pair<string, int>> pairSelect;

        for (auto v : vertecies) {
            for(auto p : *adj) {
                if ((p.first == v && p.second.first == u) || (p.first == u && p.second.first == v)) {
                    trying = true;
                    pairSelect = p;
                    break;
                }
            }
            te = pairSelect.second.second;

            if (unvisited[v] && trying && distances[u] != INT_MAX && distances[u] + te < distances[v]) {
                distances[v] = distances[u] + te;
            }
            trying = false;
        }
    }
    myfile << "DIJKSTRA" << endl;
    myfile << "minimum distances from vertex: " << src << endl;
    for(int i = 0; i < V; i++){
        myfile << "Vertex: " << vertecies[i] << "\tDistance: " << distances.find(vertecies[i])->second << endl;
    }
}

void Graph :: runBellman(string src, ostream& myfile){
    map<string, int> distances;

    for(int i = 0; i < V; i+=1){
        distances.insert({vertecies[i], INT_MAX});
    }

    distances[src] = 0;
string u;
string vx;
int weight = 0;

    for (int j = 0; j < V; j++) {
        for(auto v : vertecies) {
            for(auto p : *adj) {
                if(p.first == v){
                    u = p.first;
                    vx = p.second.first;
                    weight = p.second.second;
                } else if(p.second.first == v){
                    vx = p.first;
                    u = p.second.first;
                    weight = p.second.second;
                }
                if (distances[u] != INT_MAX && distances[u] + weight < distances[vx]) {
                    distances[vx] = distances[u] + weight;
                }
            }
        }
    }


    for(auto p : *adj) {
        string u = p.first;
        string v = p.second.first;
        int weight = p.second.second;
        if (distances[u] != INT_MAX && distances[u] + weight < distances[v]) {
            printf("Graph contains negative weight cycle");
            return; // If negative cycle is detected, simply return
        }
    }
    myfile << "BELLMAN-FORD " << endl;
    myfile << "minimum distances from vertex: " << src << endl;
    for(int i = 0; i < V; i++){
        myfile << "Vertex: " << vertecies[i] << "\tDistance: " << distances.find(vertecies[i])->second << endl;
    }
    myfile << "\n"<< endl;
}
#endif //PROJECT4FINAL_GRAPH_H
