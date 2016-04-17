#include<stdio.h>
int main()
{
    int t,i,j,k,n,x;
    scanf("%d",&t);
    for(i=1;i<=t;++i)
    {
        int hash[3000]={0};
        scanf("%d",&n);
        for(j=1;j<=2*n-1;++j)
        {
            for(k=1;k<=n;++k)
            {
            scanf("%d",&x);
            ++hash[x];
            }
        }
        printf("Case #%d:",i);

        for(k=1;k<=2500;++k)
        {
           // printf("hash[%d]:%d \n",i,hash[i]);
            if(hash[k]%2){
                printf(" %d",k);
            }
        }
        printf("\n");
    }
    return 0;
}
