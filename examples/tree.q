import print

int main() {
    # Siapkan buffer baris dengan ukuran 12 char
    [12]char row = "            ";
    int height = 5;
    int i = 0;

    # Loop untuk mencetak bagian daun pohon (segitiga)
    while (i < height) {
        # 1. Kosongkan baris dengan spasi (ASCII 32)
        int j = 0;
        while (j < 11) {
            row[j] = 32;
            j += 1;
        }
        row[11] = 10; # newline / \n (ASCII 10)

        # 2. Hitung posisi bintang agar berada di tengah (center alignment)
        int center = 5;
        int start = center - i;
        int end = center + i;

        # 3. Masukkan karakter '*' (ASCII 42) ke dalam rentang posisi daun
        int k = start;
        while (k <= end) {
            row[k] = 42;
            k += 1;
        }

        print(row);
        i += 1;
    }

    # Loop untuk mencetak batang pohon (2 tingkat)
    int b = 0;
    while (b < 2) {
        int j = 0;
        while (j < 11) {
            row[j] = 32;
            j += 1;
        }
        row[5] = 124; # karakter '|' (ASCII 124) untuk batang
        row[11] = 10;
        print(row);
        b += 1;
    }

    return 0;
}
