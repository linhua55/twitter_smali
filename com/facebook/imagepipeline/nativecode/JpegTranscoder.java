package com.facebook.imagepipeline.nativecode;

import bq;
import defpackage.bx;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@bq
/* compiled from: Twttr */
public class JpegTranscoder {
    @bq
    private static native void nativeTranscodeJpeg(InputStream inputStream, OutputStream outputStream, int i, int i2, int i3) throws IOException;

    static {
        a.a();
    }

    public static boolean a(int i) {
        return i >= 0 && i <= 270 && i % 90 == 0;
    }

    public static void a(InputStream inputStream, OutputStream outputStream, int i, int i2, int i3) throws IOException {
        boolean z;
        boolean z2 = false;
        bx.a(i2 >= 1);
        if (i2 <= 16) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        if (i3 >= 0) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        if (i3 <= 100) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        bx.a(a(i));
        if (!(i2 == 8 && i == 0)) {
            z2 = true;
        }
        bx.a(z2, (Object) "no transformation requested");
        nativeTranscodeJpeg((InputStream) bx.a((Object) inputStream), (OutputStream) bx.a((Object) outputStream), i, i2, i3);
    }
}
