/* Call maxofthree assembly function */

#include <stdio.h>
#include <inttypes.h>

int64_t   maxofthree(int64_t x, int64_t y, int64_t z);

int       main(void)
{
    printf("%lld\n", maxofthree(40, 12, 685));
    return (0);
}
