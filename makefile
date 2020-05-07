SDIR=./cpp
ODIR=./obj
LDIR=./lib
LIB=$(LDIR)/libgraphviewer.a

CC     =g++

CFLAGS =$(IFLAGS) -Dlinux

O_FILES=$(ODIR)/graphviewer.o $(ODIR)/connection.o

all: $(LIB)

clean:
	rm -rf $(ODIR)
	rm -rf $(LDIR)

$(LIB): $(LDIR) $(O_FILES)
	rm -f $(LIB)
	ar rvs $(LIB) $(O_FILES)

$(ODIR):
	mkdir -p $(ODIR)

$(LDIR):
	mkdir -p $(LDIR)

$(ODIR)/%.o: $(ODIR) $(SDIR)/%.cpp
	$(CC) $(CFLAGS) -c $^ -o $@ -DPWD='"$(shell pwd)"'
