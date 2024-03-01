# libft - @42Wolfsburg
## description
libft is the first step in the 42 curriculum.

at 42, we're encouraged to understand data structures and algorithms deeply.

that's why this project involves re-making of the standard c library functions with addition of some extras.

this project is crucial because this library will be used in all our projects later on.

## 

these are some **resources** that helped me:

• c references from [geeksforgeeks](https://www.geeksforgeeks.org/c-programming-language/?ref=shm)

• c references from [tutorialspoint](https://www.tutorialspoint.com/c_standard_library/index.htm)

• c library references from [cplusplus](https://cplusplus.com/reference/)

• this [learn c programming](https://programiz.pro/learn/master-c-programming?utm_source=reference-sidebar-nav&utm_campaign=programiz&utm_medium=referral) course

## 

## usage
1. clone this repository: `git clone git@github.com:idleira/libft.git libft && cd libft`;

2. make the project:
   • `make` to compile mandatory part of the project;
   • `make bonus` to compile with bonus functions.
   
3. to use the library, complie your file with the .a library file: `gcc your_file.c libft/libft.a`;
   
4. run your executable with `./a.out`;
   
5. to clean up:

   • use `make clean` to remove .o files;
   
   • use `make fclean` to clean up the project directory by removing **all** generated files.

## library contents
libft contains 43 functions.

→ all function names start with ft_ (stands for "forty two").

1. **c library**: some of the standard c functions;

|                 |                 |                 |                 |
|-----------------|-----------------|-----------------|-----------------|
|   ft_isalpha    |    ft_toupper   |    ft_memcpy    |   ft_strrchr    |
|   ft_isdigit    |    ft_atoi      |    ft_memmove   |   ft_strnstr    |
|   ft_isalnum    |    ft_bzero     |    ft_memcmp    |   ft_strncmp    |
|   ft_isascii    |    ft_calloc    |    ft_memcmp    |   ft_strncmp    |
|   ft_isprint    |    ft_memset    |    ft_strdup    |   ft_strlen     |
|   ft_tolower    |    ft_memchr    |    ft_strchr    |   ft_strlcat    |

2. **extra**: functions that will be useful for later projects at 42;

|                 |                 |                 |                 |
|-----------------|-----------------|-----------------|-----------------|
|     ft_itoa     |    ft_strtrim   |  ft_putnbr_fd   |  ft_putendl_fd  |
|     ft_split    |    ft_strmapi   |  ft_putchar_fd  |  ft_striteri    |
|    ft_strjoin   |    ft_substr    |  ft_putstr_fd   |                 |

3. **bonus**: functions useful for linked list manipulation.

|                 |                 |                 |                 |
|-----------------|-----------------|-----------------|-----------------|
|   ft_lstsize    |    ft_lstnew    |  ft_lstadd_back |    ft_lstiter   |
|   ft_lstlast    |    ft_lstmap    | ft_lstadd_front |   ft_lstdelone  |

## my final grade
![libft grade](https://github.com/idleira/libft/assets/127216218/149aa8e9-1e2e-4543-bc8e-cbc4e21136a1)
