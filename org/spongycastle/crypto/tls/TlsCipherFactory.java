package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public interface TlsCipherFactory {
    TlsCipher a(TlsContext tlsContext, int i, int i2) throws IOException;
}
