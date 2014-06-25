#include <stdio.h>

int main()
{
    int first, second, sum, temp;

    first = 0;
    second = 1;
    sum = 0;

    while(second < 4000000)
    {
        if(second % 2 == 0)
        {
            sum += second;
        }
        temp = second;
        second += first;
        first = temp;
    }
    printf("The sum is %d\n", sum);
}
    

    
    
