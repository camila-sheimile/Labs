#!bin/bash
HELL = Hello
function hello {
    LOCAL HELLO = World
    echo $HELLO
}

function who {
    LOCAL ME = Camila
    echo $ME

}
echo $HELLO
hello
who
