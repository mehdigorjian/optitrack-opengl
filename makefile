include=-I../../include
libpath=-L../../lib
libs=-lNatNet -lGLU -lGL -lglut -lstdc++ -lm -lglfw -lGLEW -ldl -lpthread #-lHL -lHLU -lHDU -lHD

all:build/SampleClient

build/SampleClient: 
	g++ SampleClient.cpp $(include) $(libpath) $(libs) -o build/SampleClient

.PHONY: clean
clean:
	@rm -f ./build/SampleClient
