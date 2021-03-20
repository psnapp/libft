# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: psnapp <psnapp@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/30 14:34:19 by psnapp            #+#    #+#              #
#    Updated: 2020/11/05 16:41:28 by psnapp           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAG = -Wall -Wextra -Werror -c

OPTION = -c -I $(HEADER)

SRC = ft_atoi.c ft_bzero.c ft_isalnum.c \
		ft_isalpha.c ft_isascii.c ft_isdigit.c \
		ft_isprint.c \
		ft_memccpy.c ft_memcpy.c ft_memset.c \
		ft_strlcat.c ft_strlcpy.c ft_strlen.c \
		ft_strncmp.c ft_tolower.c ft_toupper.c \
		ft_memmove.c ft_memchr.c ft_strnstr.c \
		ft_memcmp.c ft_strchr.c ft_strrchr.c ft_itoa.c \
		ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
		ft_strtrim.c ft_split.c ft_putchar_fd.c \
		ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strmapi.c


BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
		ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJ = $(SRC:.c=.o)

OBJB = $(BONUS:.c=.o)

all: $(NAME)

%.o: %.c
	gcc $(FLAG) $< -o $@

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

bonus: $(OBJB)
	ar rcs $(NAME) $(OBJB)

clean:
	rm -f $(OBJ) $(OBJB)

fclean: clean
	rm -f $(NAME)

re: fclean all