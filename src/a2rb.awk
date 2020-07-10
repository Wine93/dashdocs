# Copyright (C) Yuyang Chen (Wine93)

@include "join"


function stk_push(val) { stk_array[++stk_pos] = val; }
function stk_pop() { return (stk_size() > 0) ? stk_array[stk_pos--] : "ERROR"; }
function stk_top() { return (stk_size() > 0) ? stk_array[stk_pos] : "ERROR";  }
function stk_size() { return stk_pos; }


function ltrim(s) { sub(/^[ \t\r\n#]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n#]+$/, "", s); return s }
function trim(s) { return rtrim(ltrim(s)); }


function _block(token, sign) {
    if (sign == "}") {
        stk_pop()
        if (!NO_TAB_TOKEN[token])
            shiftwidth -= tabwidth
        if (!NO_SRC_TOKEN[token])
            printf ("%*send\n", shiftwidth, "")
        return
    }

    # sign="{"
    #if (mu[2] != "note" && mu[2] != "title") {
    #    #printf ()
    #}

    stk_push(token)
    if (!NO_SRC_TOKEN[token])
        printf("%*s%s do\n", shiftwidth, "", token)
    if (!NO_TAB_TOKEN[token])
        shiftwidth += tabwidth

}



function _keyval(key, val) {
    printf("%*s%s '%s'\n", shiftwidth, "", key, val)
}


function _command(command, name) {
    #print (stk_top())
    if (stk_top() != "entry") {
        return
    }

    command = trim(command)
    name = trim(name)

    printf ("%*sentry do\n", shiftwidth-tabwidth, "")
    printf ("%*std_command '%s'\n", shiftwidth, "", command)
    printf ("%*sname '%s'\n", shiftwidth, "", name)
    #printf ("%*index_name %s", shiftwidh+tabwidth, index_name)
    printf ("%*send\n", shiftwidth-tabwidth, "")
}


function parse_line(line) {
    if (!match(trim(line), REG_TOKEN, mu)) {
        #print (trim(line))
        printf ("%*s%s\n", shiftwidth, "", trim(line))

    } else if (mu[1]) {
        _block(mu[2], mu[3])
    } else if (mu[4]) {
        _keyval(mu[5], mu[6])
    } else if (mu[7]) {
        _command(mu[8], mu[9])
    }
}


BEGIN {
    shiftwidth = 0
    tabwidth = 2

    REG_TOKEN = "^" \
        "(__(cheatsheet|title|introduction|category|entry|note)__({|}))" "|"\
        "(__(id)__:(.*))" "|" \
        "(([^#]+)#(.+))" \
    "$"

    NO_SRC_TOKEN["entry"] = 1
    NO_SRC_TOKEN["title"] = 1

    NO_TAB_TOKEN["title"] = 1
}
{
    parse_line($0)
}
END {
}
