#include <stdio.h>

void preencher_vet(int vet1[], int vet2[], int range){
	for(int i = 0; i < range; i++){
		vet1[i] = range - i;
	}
	for(int i = 0; i < range; i++){
		vet2[i] = i + 1;
	}
}

void printar_vet(int x[], int n){
	for(int i = 0; i < n; i++){
		printf("%d ", x[i]);
	}
	printf("\n\n");
}

//Bubble Sort
void BubbleSort(int arr[], int n){
	int swap = 1;
	while(swap){
		swap = 0;
		for(int i = 0; i < n - 1; i++){
			if(arr[i] > arr[i + 1]){
				int temp = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = temp;
				swap = 1;
			}
		}
	}
	printf("Vetor ordenado com BubbleSort: \n");
	printar_vet(arr, n);
}

//Selection Sort
void SelectionSort(int arr[], int n){
	int small;
	for(int i = 0; i < n; i++){
		small = i;
		for(int j = i + 1; j < n; j++){
			if(arr[j] < arr[small]){
				small = j;
			}
		int temp = arr[i];
		arr[i] = arr[small];
		arr[small] = temp;
		}
	}
	printf("Vetor ordenado com SelectionSort: \n");
	printar_vet(arr, n);
}

//Insertion Sort
void InsertionSort(int arr[], int n) {
    for (int i = 1; i < n; i++) {
        int temp = arr[i];  // Guardar o valor a ser inserido
        int j = i - 1;  // Iniciar com o índice anterior ao i
        while (j >= 0 && arr[j] > temp) {  // Comparar com os elementos anteriores
            arr[j + 1] = arr[j];  // Mover os elementos maiores para a direita
            j--;  // Decrementar o índice
        }
        arr[j + 1] = temp;  // Colocar o valor de temp na posição correta
    }
    printf("Vetor ordenado com InsertionSort: \n");
    printar_vet(arr, n);
}

 int main(){
 	int range = 100;
 	int vet1[range], vet2[range];
 	
 	preencher_vet(vet1, vet2, range);
 	printf("Vetor 1 decrescente: \n");
 	printar_vet(vet1, range);
 	printf("Vetor 2 crescente: \n");
 	printar_vet(vet2, range);
 	
 	printf("///////////////////////////////////////////////////////////////////////////////\n");
 	int option;
 	printf("MENU\n");
 	printf("1 - BubbleSort\n");
 	printf("2 - SelectionSort\n");
 	printf("3 - InsertionSort\n");
 	scanf("%d", &option);
 	switch(option){
 		case 1:
 			BubbleSort(vet1, range);
 			break;
 		case 2:
 			SelectionSort(vet1, range);
 			break;
 		case 3:
 			InsertionSort(vet1,range);
 			break;
 		default:
 			printf("Erro\n");
	 };
 	return 0;	
 }
