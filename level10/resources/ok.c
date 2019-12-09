/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ok.c                                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ldedier <ldedier@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/09 08:34:14 by ldedier           #+#    #+#             */
/*   Updated: 2019/12/09 08:34:14 by ldedier          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
int main(int argc, char **argv)
{
	int fixed;
	if (argc < 2)
		return (1);
	int sock = socket(AF_INET, SOCK_STREAM, 0);
	printf("%d\n", sock);
	in_addr_t res = inet_addr(argv[1]);
	fixed = htons(res);
	connect(sock, fixed, 16);

	printf("%d\n", res);
	printf("%d\n", fixed);
	connect()
	return (0);
}
