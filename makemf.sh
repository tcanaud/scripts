pwd
read -p "Are you sure to overwrite the makefile ?" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rm -f Makefile
	srcs=$(find *.c | xargs basename | xargs echo | tr " " "\n " | sed 's/\.c/\.c \\/g')

	echo "# **************************************************************************** #" > Makefile
	echo "#                                                                              #" >> Makefile
	echo "#                                                         :::      ::::::::    #" >> Makefile
	echo "#    Makefile                                           :+:      :+:    :+:    #" >> Makefile
	echo "#                                                     +:+ +:+         +:+      #" >> Makefile
	echo "#    By: tcanaud <marvin@42.fr>                     +#+  +:+       +#+         #" >> Makefile
	echo "#                                                 +#+#+#+#+#+   +#+            #" >> Makefile
	echo "#    Created: 2017/05/03 19:01:11 by tcanaud           #+#    #+#              #" >> Makefile
	echo "#    Updated: 2017/05/05 17:10:57 by tcanaud          ###   ########.fr        #" >> Makefile
	echo "#                                                                              #" >> Makefile
	echo "# **************************************************************************** #" >> Makefile
	echo >> Makefile
	echo "NAME = $1" >> Makefile
	echo >> Makefile
	echo "SOURCES = $srcs" >> Makefile
	echo >> Makefile
	
	echo "OBJECTS = \$(SOURCES:.c=.o)" >> Makefile
	echo >> Makefile
	echo "\$(NAME): \$(OBJECTS)" >> Makefile
	echo "	ar rc \$(NAME) \$(OBJECTS)" >> Makefile
	echo "	ranlib \$(NAME)" >> Makefile
	echo >> Makefile
	echo "all: \$(NAME)" >> Makefile
	echo >> Makefile	
	echo "%.o: %.c" >> Makefile
	echo "	gcc -c -Wall -Wextra -Werror -o \$@ $<" >> Makefile
	echo >> Makefile
	echo "clean:" >> Makefile
	echo "	rm -f \$(OBJECTS)" >> Makefile
	echo >> Makefile
	echo "fclean: clean" >> Makefile
	echo "	rm -f \$(NAME)" >> Makefile
	echo >> Makefile
	echo "re: fclean all" >> Makefile
	
fi
