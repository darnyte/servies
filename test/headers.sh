source ./servies

expect "headers to be colon separated" \
    $(test "$(header "Content-Type" "text/plain")" = "Content-Type: text/plain")

expect "values can be optional" \
    $(test "$(header "Content-Type")" = "Content-Type: ")
