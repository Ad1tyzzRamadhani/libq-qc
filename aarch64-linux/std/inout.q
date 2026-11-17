int strlen(const char* s) {
    int len = 0;
    while (s[len] != 0) {
        len += 1;
    }
    return len;
}

bool strcmp(const char* s1, const char* s2) {
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

void concat(char* dest, const char* src1, const char* src2) {
    int i = 0;
    int j = 0;
    
    while (src1[i] != 0) {
        dest[i] = src1[i];
        i += 1;
    }
    
    while (src2[j] != 0) {
        dest[i] = src2[j];
        i += 1;
        j += 1;
    }
    
    dest[i] = 0;
}
