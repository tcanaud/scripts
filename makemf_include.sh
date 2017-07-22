pwd
read -p "Are you sure to overwrite the makefile ?" -n 1 -r
echo   
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rm -f Makefile
	srcs=$(find . -type f | grep ".\.c$" | xargs echo | tr " " "\n " | sed 's/\.c/\.c \\/g' | sed '$s/\\//')

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




	echo "BLACKBLACK=\\x1b[30m\\x1b[40m" >> Makefile
	echo "RED=\\x1b[31m" >> Makefile
	echo "GREEN=\\x1b[32m" >> Makefile
	echo "YELLOW=\\x1b[33m" >> Makefile
	echo "BLUE=\\x1b[34m" >> Makefile
	echo "PURPLE=\\x1b[35m" >> Makefile
	echo "CYAN=\\x1b[36m" >> Makefile
	echo "WHITE=\\x1b[37m" >> Makefile
	echo "BLACKGREEN=\\x1b[40m\\x1b[32m" >> Makefile
	echo "NOCOLOR=\\x1b[m" >> Makefile
	echo "ICONE=\\" >> Makefile
	echo "\$(BLACKGREEN) \$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN\$(BLACKGREEN)KN\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN\$(BLACKGREEN)KN\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)N\$(BLACKGREEN)KN\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)NKN\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Xxo0\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)XxlcO\$(BLACKBLACK)WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WXX\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WKkxocO\$(BLACKBLACK)WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)W0d0\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)W0dkOll0\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)W0olOWWW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMM\$(BLACKGREEN)NkoxOxcx\$(BLACKBLACK)NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)KoclxKXKN\$(BLACKBLACK)MMMMMMMMMMMMMMMM\$(BLACKGREEN)Nklodo:c0\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMWWM\$(BLACKGREEN)Xo:odk0KXW\$(BLACKBLACK)MMMMMMMMMMMM\$(BLACKGREEN)WKOdoxkxl:xW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)NXNWXd;ckKKKXWWNX0KW\$(BLACKBLACK)MMMM\$(BLACKGREEN)N0dodkOd:;oX\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WNXXWWNxlxKKOO00OkxON\$(BLACKBLACK)MM\$(BLACKGREEN)WKdldxxkdc;oX\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)NXKKKNNN00X0ddxkOOxxXWXkllddddl;;dX\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)W0OKK0000K0xc:lxkxllkOolloolc:;:kW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)NKOO0K00Odccclodolcclodoolc:;:kW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WNKkkOkoloddddddddoodkkdl;,;xW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WWNOl:loodxxxxxdddoccccc:;,':0\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)W0xddl;,;clddxxxddolc::cllc;,cdOW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)0:,,''',:cloooooolc;;cllllc::okK\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Kc,:;;,;:cclllllc:ldolllllcc:;;lK\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WOc:cllcc::cccc;,:ONXkoclodxxolcdN\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Nx;;:ccc:;;:c;. .'lKNkodxxxolc::kW\$(BLACKBLACK)MMMMMMMMMMMMM\$(BLACKGREEN)WWWWWNNNNNNNNNNXXXXXK000OOkkkOXW\$(BLACKBLACK)M\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMM\$(BLACKGREEN)WWWW\$(BLACKBLACK)MM\$(BLACKGREEN)Nx;,,...';::x0l. ...cOkxdoc:;;,,'lX\$(BLACKBLACK)MMMMMMMM\$(BLACKGREEN)WWNNXKK0Okxdoolcccc::;;:coxO00KKKXN\$(BLACKBLACK)WMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMM\$(BLACKGREEN)WNX0kxdddkOK\$(BLACKBLACK)X\$(BLACKGREEN)Nk;''....;:ckKx,...':ddoc;,,,,,''dN\$(BLACKBLACK)MMMMMMM\$(BLACKGREEN)WX0Okdlc:;'..........':dOXW\$(BLACKBLACK)MMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)M\$(BLACKGREEN)X0OOkdoc;,......,codOKd,'''';:lodkxolloddol:;,'''..'lX\$(BLACKBLACK)MMMMMMM\$(BLACKGREEN)WOdol;'...'..........:ON\$(BLACKBLACK)MMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)M\$(BLACKGREEN)XOOOxo:,..........,:codccllllodddddddolc:;,,,,'..,:dX\$(BLACKBLACK)MMMMMMMM\$(BLACKGREEN)Ko:;''..............cK\$(BLACKBLACK)MMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMM\$(BLACKGREEN)WXOo;........,;,;::cclloolllcc::;,,,,;,'..;kX\$(BLACKBLACK)NMMMMMMMM\$(BLACKGREEN)Wk:;'...............,kW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMM\$(BLACKGREEN)Xx,......',,',;;::cccccc::;;;;;:;,'.,lKW\$(BLACKBLACK)MMMMMMMMMM\$(BLACKGREEN)Xd;,'............,cdON\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMM\$(BLACKGREEN)Nd'.....'',,',;;:::::;;,,,,;;;,'.,o0W\$(BLACKBLACK)MMMMMMMMMMM\$(BLACKGREEN)W0c;,..........'ckXW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMM\$(BLACKGREEN)0c'......',,,;:\$(BLACKBLACK)lldd\$(BLACKGREEN)oc,'',,''''':OW\$(BLACKBLACK)MMMMMMMMMMMM\$(BLACKGREEN)WXd:;'.........:OW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMW\$(BLACKGREEN)N0d:.....';;:\$(BLACKBLACK)xXNWMW0c\$(BLACKGREEN);;:;,,,'c0W\$(BLACKBLACK)MMMMMMMMMMM\$(BLACKGREEN)WXKOdc,.........cK\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMM\$(BLACKGREEN)WXx,....';;\$(BLACKBLACK)cdKWMNx\$(BLACKGREEN):cc:;,,';OW\$(BLACKBLACK)MMMMMMMM\$(BLACKGREEN)WNK0Okkxl;.........;0\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WO;.....,;;:\$(BLACKBLACK)okxc\$(BLACKGREEN):cc:;,,';kW\$(BLACKBLACK)MW\$(BLACKGREEN)NXXXK0Okkxdoc::::ccllloooOW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WO;......',,,;:looc:;;,,cO0dlloddddoooxkOKXNWWW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Wk;,;:cccc:,;cloolc::::;;;;;:ccc:;:o0W\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WXXNWWWWNk::cloddoccclllc::;,'''',;dXW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Xo;:cloddolcclodolc:,'..''';ckN\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)O:;:clooddollodddolc;'''',,,,;oK\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)No,,::cccllcclooddol:;''',;::;,,lK\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Wk;',,,;::::::cloooolc,''';ccc:;,,c0W\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Kc,;;,,,;;;::;;:lloolc;'',:llcc:;,'c0\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)O;,;:;,,,;;::;;;cllllc:'.,:llcc::;,,dN\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Wk,,;:;;,',,,;;;,:clllc:'.';ccccc::;,;xXN\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Wk,,;:;;;,;:;',,',:llll:'..,:cccc::;,'';ld0NW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)O;,;:;;;,\$(BLACKBLACK)oKd\$(BLACKGREEN),'''',:cll;'...,ccc:::;,....';:xN\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Kl,;;:;;\$(BLACKBLACK)lKW0\$(BLACKGREEN):''''',:cc:;;:cllc;;;;,'........c0W\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Wx;;:::\$(BLACKBLACK)dX\$(BLACKBLACK)MMWO\$(BLACKGREEN):''''':llcoOKWWWKo;,,,'.,:cc:,..;ONW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WkccccdX\$(BLACKBLACK)MMMMWKo\$(BLACKGREEN),''':odlxKN\$(BLACKBLACK)MMMM\$(BLACKGREEN)Nk;''''lK\$(BLACKBLACK)WWWX\$(BLACKGREEN)Oo,';l0W\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)NxlolxX\$(BLACKBLACK)MMMMMMMW0l\$(BLACKGREEN),':ddoONW\$(BLACKBLACK)MMMMM\$(BLACKGREEN)WKo,..;O\$(BLACKBLACK)MMMMM\$(BLACKGREEN)Nl...cX\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WWNXK0kooodK\$(BLACKBLACK)MMMMMWWNNX\$(BLACKGREEN)Ol:odooOWW\$(BLACKBLACK)MMMMMMM\$(BLACKGREEN)Wk:;:xN\$(BLACKBLACK)MMMMWK\$(BLACKGREEN)d:',k\$(BLACKBLACK)WMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)Kxk0d:cldo:xN\$(BLACKBLACK)MMWN0O0O\$(BLACKGREEN)ooko:clcd0KN\$(BLACKBLACK)MMMMM\$(BLACKGREEN)WXkoooclkXW\$(BLACKBLACK)MMMMMW\$(BLACKGREEN)X0K\$(BLACKBLACK)WMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)XOKXkdddOkdK\$(BLACKBLACK)MMMWX0OO\$(BLACKGREEN)xlx0xoodx0NNW\$(BLACKBLACK)MMMMM\$(BLACKGREEN)WKxoooloOXW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)WWW\$(BLACKBLACK)M\$(BLACKGREEN)WWWW\$(BLACKBLACK)MMMMMMWWWW\$(BLACKGREEN)NNWWWW\$(BLACKBLACK)MMMMMMMMMMMMMMWWNNW\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(BLACKGREEN)\\\n\\" >> Makefile
	echo "\$(BLACKBLACK)MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\$(NOCOLOR)\\\n" >> Makefile








	echo >> Makefile
	echo "NAME = $1" >> Makefile
	echo >> Makefile
	echo "SOURCES = $srcs" >> Makefile
	echo >> Makefile

	echo "OBJECTS = \$(SOURCES:.c=.o)" >> Makefile
	echo "\$(NAME): \$(OBJECTS)" >> Makefile
	echo "	@ar rc \$(NAME) \$(OBJECTS)" >> Makefile
	echo "	@ranlib \$(NAME)" >> Makefile
	echo "	@printf \"\\\r                                                                                                                 \r\$(GREEN)\\\r\$(NAME) was created successfully !\$(NOCOLOR)\\\n\"" >> Makefile
	echo "" >> Makefile
	echo "echo:" >> Makefile
	echo "	@printf \"\$(ICONE)\\\n\"" >> Makefile
	echo "	@printf \"\$(PURPLE)Make the \$(NAME)\$(NOCOLOR)\\\n\"" >> Makefile
	echo "" >> Makefile
	echo "all: \$(NAME)" >> Makefile
	echo "" >> Makefile

	echo "%.o: %.c" >> Makefile
	echo "	@gcc -c -Wall -Wextra -Werror -o \$@ $< -I ../include/" >> Makefile
	echo "	@printf \"\\\r\$(PURPLE)\$@ $<\$(NOCOLOR)                                                                                            \\\r\"" >> Makefile
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