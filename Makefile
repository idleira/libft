# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ibeliaie <ibeliaie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/19 15:16:37 by ibeliaie          #+#    #+#              #
#    Updated: 2023/05/25 15:30:50 by ibeliaie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a


SRC =	ft_atoi.c       \
		ft_itoa.c       \
		ft_split.c      \
		ft_bzero.c      \
		ft_calloc.c     \
		ft_memset.c     \
		ft_memchr.c     \
		ft_memcpy.c     \
		ft_memcmp.c     \
		ft_strdup.c     \
		ft_strchr.c     \
		ft_strlen.c     \
		ft_substr.c     \
		ft_isalpha.c    \
		ft_isdigit.c    \
		ft_isalnum.c    \
		ft_isascii.c    \
		ft_isprint.c    \
		ft_tolower.c    \
		ft_toupper.c    \
		ft_memmove.c    \
		ft_strrchr.c    \
		ft_strnstr.c    \
		ft_strncmp.c    \
		ft_strlcat.c    \
		ft_strlcpy.c    \
		ft_strjoin.c    \
		ft_strtrim.c    \
		ft_strmapi.c    \
		ft_striteri.c   \
		ft_putnbr_fd.c  \
		ft_putstr_fd.c  \
		ft_putchar_fd.c \
		ft_putendl_fd.c 

OBJ = $(SRC:.c=.o)

BONUS =	ft_lstmap.c       \
		ft_lstnew.c       \
		ft_lstiter.c      \
		ft_lstsize.c      \
		ft_lstlast.c      \
		ft_lstclear.c     \
		ft_lstdelone.c    \
		ft_lstadd_back.c  \
		ft_lstadd_front.c

BONUS_OBJ =$(BONUS:.c=.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror
 
RM = @rm -rf

YELLOW = \033[0;93m
GREEN = \033[0;92m
PURPLE = \033[0;35m

all: $(NAME)
	
$(NAME): $(OBJ)
	@ar -rsc $(NAME) $(OBJ)
	@echo "$(PURPLE)libft compiled successfully!!$(DEF_COLOR)"

bonus: $(OBJ) $(BONUS_OBJ)
	@ar -rsc $(NAME) $(OBJ) $(BONUS_OBJ)
	@echo "$(YELLOW)compiled libft(+ bonus) successfully $(DEF_COLOR)"

clean:
	$(RM) $(OBJ) $(BONUS_OBJ)
	@echo "$(YELLOW)object files cleaned!$(DEF_COLOR)"

fclean: clean
	$(RM) $(NAME)
	@echo "$(GREEN)everything cleaned!$(DEF_COLOR)"

re: fclean all

.PHONY: all clean fclean re bonus