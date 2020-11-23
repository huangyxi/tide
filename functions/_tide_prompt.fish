function _tide_prompt
    if test "$tide_print_newline_before_prompt" = 'true'
        printf '%b' '\n'
    end

    set_color $tide_prompt_connection_color
    string repeat --no-newline --max $COLUMNS $tide_prompt_connection_icon
    printf '%b' '\r'

    set -g _tide_left_prompt_height (math 1+(string match --all 'newline' $tide_left_prompt_items | count))

    _tide_right_prompt
    _tide_left_prompt
end