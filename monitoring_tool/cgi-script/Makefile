default:
	g++ main.cpp -o getAgentData

install: default
	mkdir -p /usr/local/cgi-bin
	cp getAgentData getAgentData.cgi /usr/local/cgi-bin

clean:
	rm -rf getAgentData
