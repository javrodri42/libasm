# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javrodri <javrodri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/05 17:32:43 by javrodri          #+#    #+#              #
#    Updated: 2020/10/05 18:44:13 by javrodri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME    =   libasm.a
SRCS    =   ft_strlen.s		\
            ft_strcpy.s		\
            ft_strcmp.s		\
            ft_strdup.s		\
            ft_read.s		\
            ft_write.s
OBJS    =   $(SRCS:.s=.o)
NASM    =   nasm -fmacho64
CFLAGS  =   -Wall -Werror -Wextra
RUN     =   && ./a.out
%.o : %.s
			@$(NASM) $<
all     :   $(NAME)
$(NAME) :   $(OBJS)
			@ar rcs $(NAME) $(OBJS)
clean   :
			@rm -rf $(OBJS)
fclean  :   clean
			@rm -rf $(NAME) main.o
re		:   fclean $(NAME)
test	:   main.c  $(NAME) clean
			@clear
			@gcc $(CFLAGS) $< $(NAME) $(RUN)
			#@rm -rf $(NAME) a.out
.PHONY  :   clean fclean re test