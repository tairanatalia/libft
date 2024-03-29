NAME = libft.a

SRC =	ft_atoi.c\
		ft_bzero.c\
		ft_calloc.c\
		ft_countsplit.c\
		ft_get_next_line.c\
		ft_htoi.c\
		ft_isalnum.c\
		ft_isalpha.c\
		ft_isascii.c\
		ft_isdigit.c\
		ft_isprint.c\
		ft_itoa.c\
		ft_memchr.c\
		ft_memcmp.c\
		ft_memcpy.c\
		ft_memmove.c\
		ft_memset.c\
		ft_putchar_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\
		ft_putstr_fd.c\
		ft_split.c\
		ft_strchr.c\
		ft_strdup.c\
		ft_striteri.c\
		ft_strjoin.c\
		ft_strlcat.c\
		ft_strlcpy.c\
		ft_strlen.c\
		ft_strmapi.c\
		ft_strncmp.c\
		ft_strnstr.c\
		ft_strrchr.c\
		ft_strtrim.c\
		ft_substr.c\
		ft_tolower.c\
		ft_toupper.c

BSRC =	ft_lstadd_back.c\
		ft_lstadd_front.c\
		ft_lstclear.c\
		ft_lstdelone.c\
		ft_lstiter.c\
		ft_lstlast.c\
		ft_lstmap.c\
		ft_lstnew.c\
		ft_lstsize.c

OBJS = $(SRC:.c=.o)

BOBJS = $(BSRC:.c=.o)

CFLAGS = -Wall -Wextra -Werror

CLEAN = rm -rf

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(OBJS): $(SRC)
	cc $(CFLAGS) -c $(SRC)

clean:
	$(CLEAN) $(OBJS)

fclean: clean
	$(CLEAN) $(NAME)

re: fclean all

bonus: $(BOBJS)
	ar rcs $(NAME) $(BOBJS)

$(BOBJS): $(BSRC)
	cc $(CFLAGS) -c $(BSRC)

.PHONY: all clean fclean re bonus