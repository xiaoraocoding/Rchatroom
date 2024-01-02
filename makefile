test_server: testServer.cpp server.cpp server.h
	g++ -std=c++11  -o test_server testServer.cpp server.cpp -lpthread
clean:
	rm test_server