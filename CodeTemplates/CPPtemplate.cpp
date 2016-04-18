#include<bits/stdc++.h>
using namespace std;
typedef long long int ll;
#define MOD 1000000007
#define MIN(a,b) ((a)<(b)?(a):(b))
#define MAX(a,b) ((a)>(b)?(a):(b))
#define size 1000001
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
    return gcd(y,x%y);
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
       
    }
    return 0;
}
