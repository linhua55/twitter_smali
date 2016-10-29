package defpackage;

import cun;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.util.zip.GZIPOutputStream;

/* compiled from: Twttr */
/* renamed from: cvh */
public final class cvh {
    public static byte[] a(byte[] bArr) {
        Closeable byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            Closeable gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr);
                cun.a(gZIPOutputStream);
                cun.a(byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable e) {
                throw new RuntimeException(e);
            } catch (Throwable th) {
                cun.a(gZIPOutputStream);
            }
        } catch (Throwable e2) {
            try {
                throw new RuntimeException(e2);
            } catch (Throwable th2) {
                cun.a(byteArrayOutputStream);
            }
        }
    }
}
