%{
#include <stdio.h>
%}

%%
[0123456789]+           printf("NUMBER\n");
[_]*[a-zA-Z][a-zA-Z0-9]*    printf("WORD\n");
%%


