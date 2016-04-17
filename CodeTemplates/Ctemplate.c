#include<stdio.h>
#include<stdbool.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
#define MOD 1000000007
#define MIN(a,b) ((a)<(b)?(a):(b))
#define MAX(a,b) ((a)>(b)?(a):(b))
#define size 1000001
#define ll long long int
int compare (const void * a, const void * b)
{
   return ( *(ll*)a - *(ll*)b );
}    
bool notprime[size+1];
void sieve()
{
    ll i,j;
    notprime[0]=notprime[1]=1;
    notprime[2]=0;
    for(i=4;i<size;i+=2)
        notprime[i]=1;
    for(i=3;i<size;i+=2)
    {
        if(!notprime[i])
        {
            for(j=i*i;j<size;j+=i)
                notprime[j]=1;
        }
    }
    
}

ll gcd(ll x,ll y)
{
    if(y==0)
        return x;
    return gcd(y%x,x);
}

ll modexp(ll base,ll exp)
{
    ll res=1;
    while(exp)
    {
        if(exp%2){
            res*=base;
            res%=MOD;
        }
        exp/=2;
        base*=base;
        base%=MOD;
    }
    return res;
}
int main()
{
    ll t;
    scanf("%lld",&t);
    while(t--)
    {
        //do your shit
        ll n;
        scanf("%lld",&n);
        ll arr[n];
        for(int i=0;i<n;++i)
            scanf("%lld",&arr[i]);
        qsort(arr,n,sizeof(ll),compare);  
        for(int i=0;i<n;++i)
        printf("%lld ",arr[i]);  
       printf("\n");
    }
    return 0;
}
