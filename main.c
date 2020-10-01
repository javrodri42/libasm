/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javrodri <javrodri@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/09/03 19:50:41 by javrodri          #+#    #+#             */
/*   Updated: 2020/10/01 20:04:27 by javrodri         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void    check_ft_strlen(){
    char *javi = "hola";
    printf("%lu\n", strlen(javi));
    printf("%zu\n", ft_strlen(javi));
}

void    check_ft_strcmp(){
    char *s1 = "hola";
    char *s2 = "hola";
    printf("%d\n", strcmp(s1, s2));
    printf("%d\n", ft_strcmp(s1, s2));
}

int main(){
    printf("-------ft_strlen------");
    check_ft_strlen();
    printf("-------ft_strcmp------");
    check_ft_strcmp();
    return(0);
}