#n, k=map(int,input().split(' '))
#n= int(input())
usr, pas, login =[], [], []
#for i in range(n):
while True:
    b=[j for j in input().split()]
    if b[0]=='register':
        if (b[1] in usr)==False:
            usr.append(b[1]) 
            pas.append(b[2])
            login.append(0)
            print('success: new user added')
        else:
            print('fail: user already exists')
    elif b[0]=='login': 
        if b[1] not in usr:
            print('fail: no such user')
        elif b[2]!=pas[usr.index(b[1])]:
            print('fail: incorrect password')
        elif login[usr.index(b[1])]==1:
            print('fail: already logged in')
        else:
            login[usr.index(b[1])]=1
            print('success: user logged in')
    elif b[0]=='logout':
        if b[1] not in usr:
            print('fail: no such user')
        elif login[usr.index(b[1])]==0:
            print('fail: already logged out')
        else:
            login[usr.index(b[1])]=0
            print('success: user logged out')
