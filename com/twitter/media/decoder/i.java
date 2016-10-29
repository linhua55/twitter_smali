package com.twitter.media.decoder;

import android.graphics.Bitmap;
import com.twitter.util.math.Size;
import java.io.FileInputStream;
import java.io.IOException;

/* compiled from: Twttr */
public class i extends ImageDecoder {
    protected int m;

    public ImageDecoder f(int i) {
        this.m = i;
        return this;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    com.twitter.media.decoder.b c(boolean r7) {
        /*
        r6 = this;
        r0 = 0;
        r2 = new android.media.MediaMetadataRetriever;
        r2.<init>();
        r1 = r6.h;	 Catch:{ RuntimeException -> 0x001e }
        r1 = r1.getAbsolutePath();	 Catch:{ RuntimeException -> 0x001e }
        r2.setDataSource(r1);	 Catch:{ RuntimeException -> 0x001e }
        r1 = r6.m;	 Catch:{ RuntimeException -> 0x001e }
        r1 = r1 * 1000;
        r4 = (long) r1;	 Catch:{ RuntimeException -> 0x001e }
        r1 = r2.getFrameAtTime(r4);	 Catch:{ RuntimeException -> 0x001e }
        r2.release();	 Catch:{ RuntimeException -> 0x004f }
    L_0x001b:
        if (r1 != 0) goto L_0x002f;
    L_0x001d:
        return r0;
    L_0x001e:
        r1 = move-exception;
        bbn.a(r1);	 Catch:{ all -> 0x002a }
        r2.release();	 Catch:{ RuntimeException -> 0x0027 }
        r1 = r0;
        goto L_0x001b;
    L_0x0027:
        r1 = move-exception;
        r1 = r0;
        goto L_0x001b;
    L_0x002a:
        r0 = move-exception;
        r2.release();	 Catch:{ RuntimeException -> 0x0051 }
    L_0x002e:
        throw r0;
    L_0x002f:
        r0 = com.twitter.util.math.Size.a(r1);
        r2 = r6.a;
        r2 = r2.g(r0);
        r3 = r6.a;
        r0 = r3.c(r0);
        r3 = 1;
        r2 = com.twitter.media.util.a.a(r1, r0, r2, r3);
        if (r2 == r1) goto L_0x0049;
    L_0x0046:
        r1.recycle();
    L_0x0049:
        r0 = new com.twitter.media.decoder.b;
        r0.<init>(r2);
        goto L_0x001d;
    L_0x004f:
        r2 = move-exception;
        goto L_0x001b;
    L_0x0051:
        r1 = move-exception;
        goto L_0x002e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.media.decoder.i.c(boolean):com.twitter.media.decoder.b");
    }

    protected Size a(FileInputStream fileInputStream) throws IOException {
        throw new UnsupportedOperationException();
    }

    protected Bitmap b(FileInputStream fileInputStream) throws IOException {
        throw new UnsupportedOperationException();
    }
}
