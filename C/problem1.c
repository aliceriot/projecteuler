#include <stdio.h>

main() {
    int sum, i;

    sum = 0;
    i = 3;
    for(i = 3; i < 1000; i++){
        if(i % 3 == 0 || i % 5 == 0)
        {
            sum += i;
        }
    }
    printf("Answer! %d\n",sum);
}
        
//it works! beautiful!
//my first euler in c!
