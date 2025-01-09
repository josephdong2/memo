#!/bin/python3

def find_between_D1_and_D2_in_DIR_matching_PATTERN(D1, D2, DIR, PATTERN):
    return f'find {DIR}  -type f -newermt "{D1}" ! -newermt "{D2}" | grep {PATTERN}'


# todo
def find_in_DIR_matching_PATTERN_then_sort_then_select_all_except_last_N(DIR, PATTERN, N):
    return f'''ls {DIR} | grep '{PATTERN}' | sort | head -n-{N}'''
