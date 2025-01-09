# /bin/python3

def add_to_keyring(a: list):
    return f'''echo -n '{a[2]}' | secret-tool store --label="{a[0]}_{a[1]}" {a[0]} {a[1]}'''


def change():
    return f'''passwd'''
