/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   reverse.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ldedier <ldedier@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/06 17:43:27 by ldedier           #+#    #+#             */
/*   Updated: 2019/12/06 17:43:27 by ldedier          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <stdio.h>

int main(int argc, char **argv)
{
	int i;
	char buffer[4096 + 1];
	int ret;
	char c;
	int fd;
	int iter;

	if (argc != 2)
		return (1);
	fd = open(argv[1], 0);
	iter = 0;
	while ((ret = read(fd, buffer, 4096)) > 0)
	{
		i = 0;
		while (i < ret - 1) // for \n
		{
			c = buffer[i] - (i + iter);
			write(1, &c, 1);
			i++;
		}
		iter += i;
	}
	return (0);
}
