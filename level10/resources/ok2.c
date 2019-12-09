/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ok2.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ldedier <ldedier@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/09 12:59:15 by ldedier           #+#    #+#             */
/*   Updated: 2019/12/09 13:04:16 by ldedier          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>

int main(int argc, char **argv)
{
	if (argc < 2)
		return (1);
	int ret = access(argv[1], R_OK);
	printf("%d\n", ret);
	return (0);
}
