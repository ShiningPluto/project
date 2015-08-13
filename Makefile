CXX := g++

SRC_DIR := src/

CXX_SRC := main.cpp

BIN_DIR := bin/

BIN_NAME := $(BIN_DIR)main

OBJ_DIR := obj/

CXX_OBJ := $(CXX_SRC:%=$(OBJ_DIR)%.o)

VPATH := $(SRC_DIR):$(OBJ_DIR)

.SUFFIXES: .cpp

.PHONY: all
all: $(BIN_NAME)


$(BIN_NAME): $(BIN_DIR) $(OBJ_DIR) $(CXX_OBJ)
	$(CXX) -o $@ $(CXX_OBJ)

$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

$(CXX_OBJ): $(OBJ_DIR)%.cpp.o : $(SRC_DIR)%.cpp
	$(CXX) -o $@ -c $<

.PHONY: clean
clean:
	-rm -r $(OBJ_DIR)*
	-rm $(BIN_NAME)
