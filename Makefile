SRC 	 := src
INCLUDE  := include
BUILD    := build
BIN      := bin

CC       := g++
CFLAGS   := -std=c++14 -I$(INCLUDE)
LDFLAGS  := -lpqxx -lpq

SRCFILES := $(shell find src/ -name *.cpp)   #All $SRC/.cpp files
OBJFILES := $(patsubst $(SRC)/%.cpp, $(BUILD)/%.o, $(SRCFILES))
DEPFILES := $(patsubst $(SRC)/%.cpp, $(BUILD)/%.d, $(SRCFILES))

.PHONY: gobsentence
gobsentence: $(BIN)/gobsentence

$(BUILD)/%.o: $(SRC)/%.cpp
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

$(BIN)/gobsentence: $(OBJFILES)
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $(OBJFILES) -o $@ $(LDFLAGS)

-include $(DEPFILES)

$(BUILD)/%.d: $(SRC)/%.cpp
	@mkdir -p $(@D)
	@bash ./depend.sh `dirname $<` $(CFLAGS) $< > $@

.PHONY: clean
clean:
	@rm -rfv build/
	@rm -rfv bin/

.PHONY: install
install: $(BIN)/gobsentence
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@install $< $(DESTDIR)$(PREFIX)/bin/gobsentence

.PHONY: uninstall
uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/gobsentence

