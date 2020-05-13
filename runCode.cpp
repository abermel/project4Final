//
// Created by Amanda Bermel on 5/8/20.
//

#include "runCode.h"
#include "Graph.h"
//declaring variables
runCode :: runCode(){

}

void runCode :: run(char* a, ofstream& myfile, string source, int select) {
    ifstream inFile;
    string temp;
    int num;
    std::string::size_type sz;
    char *tempChar[50];
    string start;
    string end;
    int weight;
    vector <string> theSet;

//open the input file
    inFile.open(a);
    if (!inFile.is_open()) {
        cout << "File didn't open" << endl;
    }

//take in the number of verticies
    inFile >> temp;
    num = stoi(temp, &sz);


//insert all nodes into a disjoint set
    for (int i = 0; i < num; i++) {
        inFile >> temp;
        theSet.push_back(temp);
    }

   Graph theGraph(num, 0, theSet);
    int e = 0;

    inFile >> temp;
    inFile.ignore();

//Read in the edges and weights and put them in a vector of pairs
    while (!inFile.eof()) {
        getline(inFile, temp, ' ');
        start = temp;

        getline(inFile, temp, ' ');
        end = temp;

        getline(inFile, temp, '\n');
        if (temp != "") {
            weight = stoi(temp);
        } else {
            weight = -1;
        }
        e++;
        theGraph.addEdge(start, end, weight);
    }
    theGraph.setE(e);

    if(select == 1) {
        myfile << num << endl;
        for (int i = 0; i < theSet.size(); i++) {
            myfile << theSet[i] << endl;
        }
        theGraph.runDijkstra(source, myfile);
        myfile << "\n";
    }else {
        theGraph.runBellman(source, myfile);
    }
}