package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.util.Hashtable;
import org.spongycastle.util.Integers;

/* compiled from: Twttr */
public class TlsExtensionsUtils {
    public static final Integer a;
    public static final Integer b;
    public static final Integer c;
    public static final Integer d;
    public static final Integer e;
    public static final Integer f;

    static {
        a = Integers.a(22);
        b = Integers.a(15);
        c = Integers.a(1);
        d = Integers.a(0);
        e = Integers.a(5);
        f = Integers.a(4);
    }

    public static Hashtable a(Hashtable hashtable) {
        return hashtable == null ? new Hashtable() : hashtable;
    }

    public static short b(Hashtable hashtable) throws IOException {
        byte[] a = TlsUtils.a(hashtable, c);
        return a == null ? (short) -1 : b(a);
    }

    public static boolean c(Hashtable hashtable) throws IOException {
        byte[] a = TlsUtils.a(hashtable, a);
        return a == null ? false : a(a);
    }

    public static boolean d(Hashtable hashtable) throws IOException {
        byte[] a = TlsUtils.a(hashtable, f);
        return a == null ? false : c(a);
    }

    private static boolean d(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        } else if (bArr.length == 0) {
            return true;
        } else {
            throw new TlsFatalAlert((short) 47);
        }
    }

    public static boolean a(byte[] bArr) throws IOException {
        return d(bArr);
    }

    public static short b(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        } else if (bArr.length != 1) {
            throw new TlsFatalAlert((short) 50);
        } else {
            short s = (short) bArr[0];
            if (MaxFragmentLength.a(s)) {
                return s;
            }
            throw new TlsFatalAlert((short) 47);
        }
    }

    public static boolean c(byte[] bArr) throws IOException {
        return d(bArr);
    }
}
