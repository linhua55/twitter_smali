package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
/* renamed from: cxs */
public class cxs {
    private static final cxt a;

    static {
        a = new cxt();
    }

    public static byte[] a(byte[] bArr) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream(((bArr.length + 2) / 3) * 4);
        try {
            a.a(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("exception encoding base64 string: " + e);
        }
    }

    public static byte[] a(String str) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream((str.length() / 4) * 3);
        try {
            a.a(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("exception decoding base64 string: " + e);
        }
    }
}
