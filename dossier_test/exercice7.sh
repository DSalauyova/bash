#!/bin/bash

echo "Ecrivez quelque chose :"
read expression

get_in_caps() {
   echo "${expression^^}"
}
get_in_lower() {
   echo "${expression,,}"
}
get_in_reverse() {
    echo "$(echo "expression" | rev)"
}
is_palindrome() {
    local str="$1"
    local reversed_str=$(echo "$str" | rev)
    if [ "$str" = "$reversed_str" ]; then
        echo "La chaîne est un palindrome"
    else
        echo "La chaîne n'est pas un palindrome"
    fi
}

get_in_caps
get_in_lower
get_in_reverse
is_palindrome