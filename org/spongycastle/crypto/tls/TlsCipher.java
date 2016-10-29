package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public interface TlsCipher {
    byte[] a(long j, short s, byte[] bArr, int i, int i2) throws IOException;

    byte[] b(long j, short s, byte[] bArr, int i, int i2) throws IOException;
}
