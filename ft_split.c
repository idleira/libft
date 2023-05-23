/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ibeliaie <ibeliaie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/17 13:41:09 by ibeliaie          #+#    #+#             */
/*   Updated: 2023/05/23 15:42:32 by ibeliaie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/* word count */
static int	wcount(char const *s, char c)
{
	int	count;

	count = 0;
	while (*s)
	{
		if (*s != c)
		{
			count++;
			while (*s && *s != c)
				s++;
		}
		else
			s++;
	}
	return (count);
}

/* word length */
static int	wlen(char const *s, char c)
{
	int	len;

	len = 0;
	while (*s && *s != c)
	{
		len++;
		s++;
	}
	return (len);
}

/* word copy */
static char	*wcopy(char const *s, int len)
{
	char	*word;
	int		i;

	word = (char *)malloc((len + 1) * sizeof(char));
	if (!word)
		return (0);
	i = 0;
	while (i < len)
	{
		word[i] = *s;
		s++;
		i++;
	}
	word[i] = '\0';
	return (word);
}

/* split string into array of strings based on delimiter character*/
char	**ft_split(char const *s, char c)
{
	int		i;
	int		j;
	int		len;
	int		count;
	char	**result;

	count = wcount(s, c);
	result = (char **)malloc((count + 1) * sizeof(char *));
	j = 0;
	if (!s || !result)
		return (0);
	while (*s)
	{
		if (*s != c)
		{
			len = wlen(s, c);
			result[j++] = wcopy(s, len);
			s += len;
		}
		else
			s++;
	}
	result[j] = 0;
	return (result);
}
