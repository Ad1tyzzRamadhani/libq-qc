int strlen(char* s) {
    int len = 0;
    while (s[len] != 0) { # <-- Ubah '\0' menjadi 0
        len += 1;
    }
    return len;
}

bool strcmp(char* s1, char* s2) {
    int i = 0;
    while (true) {
        char c1 = s1[i];
        char c2 = s2[i];
        
        if (c1 != c2) {
            return false;
        }
        if (c1 == 0) {
            return true;
        }
        i += 1;
    }
    return false;
}
