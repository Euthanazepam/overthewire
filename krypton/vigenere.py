import sys


def decrypt(cipher_text, key) -> str:
    """
    Decryption function for the Vigenère cipher.
    Source: https://thepythoncode.com/article/implementing-the-vigenere-cipher-in-python

    :param cipher_text: Encrypted text
    :param key: Encryption key
    :return: Decrypted text
    """

    decrypted_text = ''

    key_repeated = (key * (len(cipher_text) // len(key))) + key[:len(cipher_text) % len(key)]

    for i in range(len(cipher_text)):
        if cipher_text[i].isalpha():
            shift = ord(key_repeated[i].upper()) - ord('A')
            if cipher_text[i].isupper():
                decrypted_text += chr((ord(cipher_text[i]) - shift - ord('A')) % 26 + ord('A'))
            else:
                decrypted_text += chr((ord(cipher_text[i]) - shift - ord('a')) % 26 + ord('a'))
        else:
            decrypted_text += cipher_text[i]

    return decrypted_text


if __name__ == '__main__':
    print(decrypt(cipher_text=sys.argv[1], key=sys.argv[2]))
