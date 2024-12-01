import sys


def frequency(string: str) -> None:
    """
    Counts the number of characters in the text
    """
    
    char_count = {}
    for char in string:
        if char in char_count:
            char_count[char] += 1
        else:
            char_count[char] = 1

    sorted_chars = sorted(char_count.items(), key=lambda x: x[1], reverse=True)

    for char, count in sorted_chars:
        print(f"'{char}': {count}")


if __name__ == "__main__":
    try:
        with open(sys.argv[1], "r") as f:
            text = f.read().replace(" ", "").replace("\n", "")
        frequency(string=text)
    except FileNotFoundError:
        print(f"[!] File '{sys.argv[1]}' doesn't exist!")
    except IndexError:
        print(f"[!] File name not specified. Try 'python {sys.argv[0]} file_name.txt'")
