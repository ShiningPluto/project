CXX := g++

SRC_DIR := src/

CXX_SRC += main.cpp

CXX_OBJ := $(CXX_SRC:%.cpp=%.o)

BUILD_DIR := bin/

OBJ_DIR := $(BUILD_DIR)obj/

VPATH := $(SRC_DIR):$(OBJ_DIR)

.SUFFIXES: .cpp

.PHONY: all
all: mkdir binary

.PHONY: binary
binary: $(CXX_OBJ)
	$(CXX) -o $(BUILD_DIR)main $(addprefix $(OBJ_DIR),$(CXX_OBJ))

.PHONY: mkdir
mkdir:
	@mkdir -p $(BUILD_DIR)
	@mkdir -p $(OBJ_DIR)

$(CXX_OBJ): %.o: %.cpp
	$(CXX) -o $(OBJ_DIR)$@ -c $<


.PHONY: clean
clean:
	-rm -r $(OBJ_DIR)*.*
	-rm $(BUILD_DIR)main
