set startup-with-shell off

define printqstring
    printf "(QString)0x%x (length=%i): \"",&$arg0,$arg0.d->size
    set $i=0
    while $i < $arg0.d->size
        set $c=$arg0.d->data[$i++]
        if $c < 32 || $c > 127
                printf "\\u0x%04x", $c
        else
                printf "%c", (char)$c
        end
    end
    printf "\"\n"
end
