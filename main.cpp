//
// Created by Amanda Bermel on 5/8/20.
//
#include "runCode.h"
#include <chrono>

int main(int argc, char* argv[]) {
runCode a;
int temp;
std::chrono::time_point<std::chrono::system_clock> start, end;
std::chrono::duration<double> elapsed_seconds;
std::time_t end_time;
char* inputs[] = {"input.txt", "input2.txt", "input3.txt", "input4.txt", "input5.txt", "input6.txt", "input7.txt", "input8.txt", "input9.txt", "input10.txt", "input32.txt"};
string sources[] = {"A", "A", "S", "1", "1", "1", "1", "BrighamYoung", "BrighamYoung", "BrighamYoung", "1"};
ofstream myfile ("output.txt");

for(int i = 0; i < 11; i++) {
    start = std::chrono::system_clock::now();
    a.run(inputs[i], myfile, sources[i], 1);
    end = std::chrono::system_clock::now();
    elapsed_seconds = end - start;
    cout << elapsed_seconds.count() << endl;

    start = std::chrono::system_clock::now();
    a.run(inputs[i], myfile, sources[i], 2);
    end = std::chrono::system_clock::now();
    elapsed_seconds = end - start;
    cout << elapsed_seconds.count() << "\n" << endl;
}
}