package com.twitter.library.network;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* compiled from: Twttr */
public class r extends InputStream {
    private final ArrayList<o> a;
    private InputStream b;
    private int c;

    public r(ArrayList<o> arrayList) {
        this.a = arrayList;
        this.c = 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int read(byte[] r8, int r9, int r10) throws java.io.IOException {
        /*
        r7 = this;
        r2 = 0;
        r3 = 0;
        r1 = r7.c;
        r0 = r7.b;
        r6 = r1;
        r1 = r3;
        r3 = r6;
    L_0x0009:
        if (r1 >= r10) goto L_0x0034;
    L_0x000b:
        if (r0 != 0) goto L_0x001b;
    L_0x000d:
        r0 = r7.a;
        r0 = r0.get(r3);
        r0 = (com.twitter.library.network.o) r0;
        r0 = r0.a();
        r7.b = r0;
    L_0x001b:
        r4 = r9 + r1;
        r5 = r10 - r1;
        r4 = r0.read(r8, r4, r5);
        r5 = -1;
        if (r4 == r5) goto L_0x0028;
    L_0x0026:
        r1 = r1 + r4;
        goto L_0x001b;
    L_0x0028:
        if (r1 == r10) goto L_0x0034;
    L_0x002a:
        r4 = r7.a;
        r4 = r4.size();
        r4 = r4 + -1;
        if (r3 != r4) goto L_0x0035;
    L_0x0034:
        return r1;
    L_0x0035:
        r3 = r3 + 1;
        r7.c = r3;
        r0.close();
        r7.b = r2;
        r0 = r2;
        goto L_0x0009;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.network.r.read(byte[], int, int):int");
    }

    public int read() throws IOException {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) == 1) {
            return bArr[0];
        }
        return -1;
    }

    public void close() throws IOException {
        if (this.b != null) {
            this.b.close();
            this.b = null;
        }
    }
}
