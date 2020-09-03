/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javrodri <javrodri@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/09/03 19:50:41 by javrodri          #+#    #+#             */
/*   Updated: 2020/09/03 19:55:32 by javrodri         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void    check_ft_strlen(){
    char *javi = "hola";
    printf("%lu\n", strlen(javi));
    printf("%zu\n", ft_strlen(javi));
}

int main(){
    check_ft_strlen();
    return(0);
}