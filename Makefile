JFLAGS = -g -d
TARGETPATH = target
CLASSPATH = ".:lib/*:target"
SOURCES := $(shell find src -name "*.java")
MAIN = io.github.mapan1984.Hello

all:
	@-mkdir -p $(TARGETPATH)
	@-javac -cp $(CLASSPATH) $(JFLAGS) $(TARGETPATH) $(SOURCES)
	@-java -cp $(CLASSPATH) $(MAIN)

run: ./src
	@javac -cp $(CLASSPATH) $(JFLAGS) $(TARGETPATH) $(SOURCES)
	@java -cp $(CLASSPATH) $(MAIN)

clean:
	@rm -rf $(TARGETPATH)/*
