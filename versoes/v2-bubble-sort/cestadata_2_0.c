#include <stdio.h>

#define TOTAL 10

typedef struct {
    const char *nome;
    float preco;
} Produto;

void exibirProdutos(const char *titulo, const Produto produtos[], int quantidade) {
    printf("\n%s\n", titulo);
    printf("--------------------------------------\n");
    for (int i = 0; i < quantidade; i++) {
        printf("%02d. %-12s R$ %6.2f\n", i + 1, produtos[i].nome, produtos[i].preco);
    }
}

void bubbleSort(Produto produtos[], int quantidade, int crescente) {
    for (int i = 0; i < quantidade - 1; i++) {
        for (int j = 0; j < quantidade - 1 - i; j++) {
            int trocar = crescente
                ? produtos[j].preco > produtos[j + 1].preco
                : produtos[j].preco < produtos[j + 1].preco;
            if (trocar) {
                Produto temp = produtos[j];
                produtos[j] = produtos[j + 1];
                produtos[j + 1] = temp;
            }
        }
    }
}

int main(void) {
    Produto produtos[TOTAL] = {
        {"Arroz", 24.90f}, {"Feijao", 8.50f}, {"Cafe", 19.90f},
        {"Acucar", 5.20f}, {"Oleo", 7.80f}, {"Leite", 5.90f},
        {"Macarrao", 4.50f}, {"Farinha", 6.70f}, {"Sal", 3.20f},
        {"Margarina", 9.90f}
    };

    printf("======================================\n");
    printf(" CESTADATA 2.0 - ORDENACAO BUBBLE SORT\n");
    printf("======================================\n");

    exibirProdutos("1. PRECOS ORIGINAIS", produtos, TOTAL);
    bubbleSort(produtos, TOTAL, 1);
    exibirProdutos("2. PRECOS EM ORDEM CRESCENTE", produtos, TOTAL);
    bubbleSort(produtos, TOTAL, 0);
    exibirProdutos("3. PRECOS EM ORDEM DECRESCENTE", produtos, TOTAL);

    return 0;
}