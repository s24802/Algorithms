#include <iostream>
#include <fstream>
#include <unordered_map>
#include <queue>
#include <string>

using namespace std;

// Node dla drzewa Huffmana
struct Node {
    char znak;
    int czest;
    Node* lewo;
    Node* prawo;

    Node(char znak, int czestotliwosc) : znak(znak), czest(czestotliwosc), lewo(nullptr), prawo(nullptr) {}
};

// Funktor porównania dla kolejki priorytetowej
struct Porownaj {
    bool operator()(Node* lewo, Node* prawo) {
        return lewo->czest > prawo->czest;
    }
};

// Budowanie drzewa Huffmana
Node* budujDrzewoHuffmana(unordered_map<char, int>& czestotliwosc) {
    // Tworzenie kolejki priorytetowej do przechowywania węzłów drzewa
    priority_queue<Node*, vector<Node*>, Porownaj> kolejka;

    // Dodawanie wszystkich znaków i ich czestotliwosc do kolejki priorytetowej
    for (auto& [znak, c] : czestotliwosc) {
        kolejka.push(new Node(znak, c));
    }

    // Kontynuowanie budowy drzewa aż pozostanie tylko jeden węzeł w kolejce
    while (kolejka.size() > 1) {
        // Wyodrębnianie dwóch węzłów o najniższych częstotliwościach
        Node* lewo = kolejka.top();
        kolejka.pop();
        Node* prawo = kolejka.top();
        kolejka.pop();

        // Tworzenie nowego węzła o łącznej czestotliwosc obu węzłów
        Node* nowy = new Node('\0', lewo->czest + prawo->czest);
        nowy->lewo = lewo;
        nowy->prawo = prawo;

        // Dodawanie nowego węzła do kolejki
        kolejka.push(nowy);
    }

    // Zwracanie korzenia drzewa
    return kolejka.top();
}

// Generowanie kodów Huffmana dla wszystkich znaków na podstawie drzewa Huffmana
void generujKodyHuffmana(Node* node, string kod, unordered_map<char, string>& kody) {
    if (!node) return;
    if (node->znak != '\0') {
        // Jeśli node zawiera znak, dodaj go do mapy kodów z odpowiednim kodem Huffmana
        kody[node->znak] = kod;
    }
    // Rekurencyjne wywoływanie funkcji dla lewego i prawego dziecka
    generujKodyHuffmana(node->lewo, kod + '0', kody);
    generujKodyHuffmana(node->prawo, kod + '1', kody);
}

int main() {
    // Otwieranie pliku wejściowego w trybie odczytu
    ifstream input("input.txt");
    if (!input) {
        cerr << "Błąd: Nie można otworzyć pliku wejściowego." << endl;
        return 1;
    }

    // Tworzenie mapy do przechowywania czestotliwosci występowania poszczególnych znaków
    unordered_map<char, int> czestotliwosci;
    char znak;
    // Odczytywanie znaków z pliku wejściowego i zliczanie ich czestotliwosci
    while (input.get(znak)) {
        ++czestotliwosci[znak];
    }

    // Budowanie drzewa Huffmana na podstawie czestotliwosci znaków
    Node* root = budujDrzewoHuffmana(czestotliwosci);

    // Tworzenie mapy do przechowywania kodów Huffmana dla poszczególnych znaków
    unordered_map<char, string> kody;
    // Generowanie kodów Huffmana dla wszystkich znaków
    generujKodyHuffmana(root, "", kody);

    // Otwieranie pliku wyjściowego w trybie zapisu binarnego
    ofstream output("output.bin", ios::binary);
    if (!output) {
        cerr << "Błąd: Nie można otworzyć pliku wyjściowego." << endl;
        return 1;
    }


    // Zapisywanie do pliku wyjściowego kodów Huffmana dla poszczególnych znaków
    for (auto& [znak, kod] : kody) {
        output << znak << " " << kod << endl;
    }
    // Zapisywanie znaku nowej linii
    output << endl;

    // Zapisywanie do pliku wyjściowego zakodowanej treści pliku wejściowego
    input.clear();
    input.seekg(0);
    while (input.get(znak)) {
        output << kody[znak];
    }

    // Zamykanie plików
    input.close();
    output.close();

    return 0;
}