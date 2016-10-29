package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public class AbstractTlsCipherFactory implements TlsCipherFactory {
    public TlsCipher a(TlsContext tlsContext, int i, int i2) throws IOException {
        throw new TlsFatalAlert((short) 80);
    }
}
