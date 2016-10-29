package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.Digest;

/* compiled from: Twttr */
public interface TlsHandshakeHash extends Digest {
    void a(short s);

    byte[] b(short s);

    TlsHandshakeHash d();

    void e();

    TlsHandshakeHash f();

    Digest g();
}
