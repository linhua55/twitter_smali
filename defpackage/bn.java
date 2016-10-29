package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
/* renamed from: bn */
public final class bn {
    public static int a(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        bx.a((Object) inputStream);
        bx.a((Object) bArr);
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("len is negative");
        }
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read == -1) {
                break;
            }
            i3 += read;
        }
        return i3;
    }
}
