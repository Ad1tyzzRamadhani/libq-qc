int strlen(char* s) {
    int len = 0;
    while (s[len] != 0) { # <-- Ubah '\0' menjadi 0
        len += 1;
    }
    return len;
}
