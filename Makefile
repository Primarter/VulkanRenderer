CC	=	g++

CXXFLAGS	=	-std=c++17 -I./ -O3

LDFLAGS	=	-lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

NAME	=	ModelLoader

SRC		=	main.cpp

OBJ		=	$(SRC:.cpp=.o)

$(NAME): $(OBJ)
	$(CC) $(CXXFLAGS) -o $(NAME) $(OBJ) $(LDFLAGS)

.PHONY: test clean

test: $(NAME)
	./$(NAME)

clean:
	rm -f $(OBJ)
	rm -f $(NAME)