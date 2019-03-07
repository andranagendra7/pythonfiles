


abc="George MacDonald Fraser (writer) -- Dead. Cancer. Died January 2, 2008. Born April 2, 1925. Wrote the Flashman series, wrote screenplays for the '70s Musketeer movies. "

test="gop43al"


def num_there(s):
    a= any(i.isdigit() for i in s)
    print (a)

print (abc)

start = abc.index(".")
end =abc.index(".",start+1)

print (start)
print (end)

print (abc[start+2:end])


num_there(test)
