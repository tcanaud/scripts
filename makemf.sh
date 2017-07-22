pwd
read -p "Are you sure to overwrite the makefile ?" -n 1 -r
echo   
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rm -f Makefile
	srcs=$(find srcs | grep "\.c$" | xargs echo | tr " " "\n " | sed 's/\.c/\.c \\/g' | sed '$s/\\//')

	echo >> Makefile
	echo "NAME = $1" >> Makefile
	echo >> Makefile
	echo "SOURCES = $srcs" >> Makefile
	echo >> Makefile

	echo "OBJECTS = \$(SOURCES:.c=.o)" >> Makefile
	echo "\$(NAME): \$(OBJECTS)" >> Makefile
	echo "	@ar rc \$(NAME) \$(OBJECTS)" >> Makefile
	echo "	@ranlib \$(NAME)" >> Makefile
	echo "	@printf \"\\\r                                                                                     \r\$(GREEN)\\\r\$(NAME) was created successfully !\$(NOCOLOR)\\\n\"" >> Makefile
	echo "" >> Makefile
	echo "echo:" >> Makefile
	echo "	@printf \"\$(ICONE)\\\n\"" >> Makefile
	echo "	@printf \"\$(PURPLE)Make the \$(NAME)\$(NOCOLOR)\\\n\"" >> Makefile
	echo "" >> Makefile
	echo "all: \$(NAME)" >> Makefile
	echo "" >> Makefile

	echo "%.o: %.c" >> Makefile
	echo "	@gcc -c -Wall -Wextra -Werror -o \$@ $< -I include/" >> Makefile
	echo "	@printf \"\\\r\$(PURPLE)\$@ $<\$(NOCOLOR)                                                                                           \\\r\"" >> Makefile
	echo "" >> Makefile
	echo "clean:" >> Makefile
	echo "	@printf \"\$(YELLOW)Remove the objects\$(NOCOLOR)\\\n\"" >> Makefile
	echo "	@rm -f \$(OBJECTS)" >> Makefile
	echo "" >> Makefile
	echo "fclean: clean" >> Makefile
	echo "	@printf \"\$(YELLOW)Remove \$(NAME)\$(NOCOLOR)\\\n\"" >> Makefile
	echo "	@rm -f \$(NAME)" >> Makefile
	echo "" >> Makefile
	echo "re: fclean all" >> Makefile
fi
