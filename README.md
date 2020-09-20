# neuralhls
Master thesis project, handwritten digit recognition ran on fpga using HLS

testy:

1. wersja bez zrownoleglenia, nie ma takiej mozliwosci poniewaz ogranicznik petli jest zmienna
Vitis
implementacja NN bez optymalizacji, wykonanie obliczen w ramach jednej warstwy sieci:

- nie liczac zaladowania danych
0.000634s podstawowa wersja
0.001010s w wersji z offsetem dla wag
0.000635s wersja z dwoma offsetami (dla wag i biasow)

-timer mierzy lacznie z zaladowaniem danych:
0.003885s w wersji z offsetem dla wag
0.003501s wersja z dwoma offsetami (dla wag i biasow)


