package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public abstract class AbstractTlsPeer implements TlsPeer {
    public void a(boolean z) throws IOException {
        if (!z) {
            throw new TlsFatalAlert((short) 40);
        }
    }

    public void a(short s, short s2, String str, Exception exception) {
    }

    public void a(short s, short s2) {
    }
}
