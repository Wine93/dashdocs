# Copyright (C) Yuyang Chen (Wine93)

# TODO:
#   (1) index_name

@include "join"

function stk_push(val) { stk_array[++stk_pos] = val; }
function stk_pop() { return (stk_size() > 0) ? stk_array[stk_pos--] : "ERROR"; }
function stk_top() { return (stk_size() > 0) ? stk_array[stk_pos] : "ERROR";  }
function stk_size() { return stk_pos; }

function ltrim(s) { sub(/^[ \t\r\n#]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s) { return rtrim(ltrim(s)); }

function _block(token, sign) {
    if (sign == "}") {
        stk_pop()
        if (!NO_TAB_TOKEN[token])
            shiftwidth -= tabwidth

        if (!NO_SRC_TOKEN[token]) {
            if (token == "notes")
                printf("%*ssEND\n", shiftwidth, "", token)
            else
                printf ("%*send\n", shiftwidth, "")
        }

        return
    }

    stk_push(token)
    if (!NO_SRC_TOKEN[token]) {
         if (token == "notes")
            printf("%*std_notes <<<-'END'\n", shiftwidth, "", token)
        else
            printf("%*s%s do\n", shiftwidth, "", token)
    }
    if (!NO_TAB_TOKEN[token])
        shiftwidth += tabwidth

}

function _keyval(key, val) {
    printf("%*s%s '%s'\n", shiftwidth, "", key, val)
}

function _encode_name(name) {
    gsub(/(')/, "\\'", name)
    return name
}

function _command(command, name, notes) {
    if (stk_top() != "entry") {
        return
    }

    printf ("%*sentry do\n", shiftwidth-tabwidth, "")
    printf ("%*std_command '%s'\n", shiftwidth, "", trim(command))
    printf ("%*sname '%s'\n", shiftwidth, "", _encode_name(trim(name)))
    if (notes) printf ("%*std_notes '%s'\n", shiftwidth, "", trim(notes))
    printf ("%*send\n", shiftwidth-tabwidth, "")
}

function parse_line(line) {
    if (!match(trim(line), REG_TOKEN, mu)) {
        line = trim(line)
        printf ("%*s%s\n", line ? shiftwidth : 0, "", line)

    } else if (mu[1]) {
        _block(mu[2], mu[3])
    } else if (mu[4]) {
        _keyval(mu[5], mu[6])
    } else if (mu[7]) {
        _command(mu[8], mu[9], mu[10])
    }
}

BEGIN {
    shiftwidth = 0
    tabwidth = 2

    REG_ENCODE_PATTERN = "(')"
    SUB_STRING = "\\$1"

    REG_TOKEN = "^" \
        "(__(cheatsheet|title|introduction|category|entry|notes)__({|}))" "|"\
        "(__(id)__:(.*))" "|" \
        "(([^#]+)(#[^#]*)(#.*)?)" \
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
