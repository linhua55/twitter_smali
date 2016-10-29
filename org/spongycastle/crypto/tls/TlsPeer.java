package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public interface TlsPeer {
    void a(short s, short s2);

    void a(short s, short s2, String str, Exception exception);

    void a(boolean z) throws IOException;

    TlsCompression c() throws IOException;

    TlsCipher e() throws IOException;
}
