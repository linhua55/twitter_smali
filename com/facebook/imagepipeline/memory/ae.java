package com.facebook.imagepipeline.memory;

import defpackage.bx;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class ae {
    private final int a;
    private final f b;

    public ae(f fVar) {
        this(fVar, 16384);
    }

    ae(f fVar, int i) {
        bx.a(i > 0);
        this.a = i;
        this.b = fVar;
    }

    public long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        long j = 0;
        byte[] bArr = (byte[]) this.b.a(this.a);
        while (true) {
            int read = inputStream.read(bArr, 0, this.a);
            if (read == -1) {
                break;
            }
            try {
                outputStream.write(bArr, 0, read);
                j += (long) read;
            } finally {
                j = this.b;
                j.a((Object) bArr);
            }
        }
        return j;
    }
}
