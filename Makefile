# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/04 15:07:09 by bahaas            #+#    #+#              #
<<<<<<< HEAD
#    Updated: 2022/06/20 15:47:12 by bahaas           ###   ########.fr        #
=======
#    Updated: 2022/06/14 15:22:46 by bahaas           ###   ########.fr        #
>>>>>>> ed0dbd0c2c36c70da37806b44eaac5c5e3f3d62d
#                                                                              #
# **************************************************************************** #

NAME			= ft_traceroute

<<<<<<< HEAD
SRCS			= $(wildcard srcs/*.c)\
=======
SRCS			= main.c
>>>>>>> ed0dbd0c2c36c70da37806b44eaac5c5e3f3d62d

CC				= clang

#CFLAGS			= -Wextra -Werror -Wall -g
CFLAGS			= -g

HEADER			= -I /includes

OBJS			= ${SRCS:.c=.o}

.c.o:
	@printf "\033[34m[FT_TRACEROUTE]\033[0m Generating .o files: \033[32mOK\033[0m%-33.33s\r\033[0m"
			@${CC} ${CFLAGS} ${HEADER} -c $< -o ${<:.c=.o}

all: 		${NAME}

ft_traceroute: 	${OBJS}
			@printf "\n"
			@make -C libft/ --no-print-directory -s
			@${CC} ${CFLAGS} ${HEADER} ${OBJS} -o ${NAME} -L libft/ -lft -lm
			@echo "\033[34m[FT_TRACEROUTE]\033[0m Building ft_traceroute program : \033[32mOK\033[0m"

clean:
			@make clean -C libft/ --no-print-directory
			@rm -rf ${OBJS}
			@echo "\033[34m[FT_TRACEROUTE]\033[0m Delete .o files : \033[32mOK\033[0m"

fclean:		clean
			@make fclean -C libft/ --no-print-directory
			@rm -rf ${NAME}
			@echo "\033[34m[FT_TRACEROUTE]\033[0m Delete executable files : \033[32mOK\033[0m"

re: 		fclean all

.PHONY:	all clean fclean re
