#include<bits/stdc++.h>
typedef long long int ll;
#define MOD 1000000007
#define MIN(a,b) ((a)<(b)?(a):(b))
#define MAX(a,b) ((a)>(b)?(a):(b))
#define MAX 1000001
bool notprime[MAX+1];
void sieve()
{
    ll i,j;
    notprime[0]=notprime[1]=1;
    notprime[2]=0;
    for(i=4;i<MAX;i+=2)
        notprime[i]=1;
    for(i=3;i<MAX;i+=2)
    {
        if(!notprime[i])
        {
            for(j=i*i;j<MAX;j+=i)
                notprime[j]=1;
        }
    }
    
}

ll gcd(ll x,ll y)
{
    if(y==0)
        return a;
    return gcd(y%x,x);
}

ll modexp(ll base,ll exp)
{
    ll res=1;
    while(exp)
    {
        if(exp%2){
            res*=base;
            res%=mod;
        }
        exp/=2;
        base*=base;
        base%=mod;
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
    }
    return 0;
}
