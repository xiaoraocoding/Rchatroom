all: testServer.cpp server.cpp server.h testClient.cpp client.cpp client.h global.h
	g++ -std=c++11 -o test_client testClient.cpp client.cpp -lpthread
	g++ -std=c++11 -o test_server testServer.cpp server.cpp -lpthread
test_server: testServer.cpp server.cpp server.h global.h
	g++ -std=c++11 -o test_server testServer.cpp server.cpp -lpthread
test_client: testClient.cpp client.cpp client.h global.h
	g++ -std=c++11 -o test_client testClient.cpp client.cpp -lpthread
clean:
	rm test_server
	rm test_client