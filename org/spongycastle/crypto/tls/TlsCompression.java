package org.spongycastle.crypto.tls;

import java.io.OutputStream;

/* compiled from: Twttr */
public interface TlsCompression {
    OutputStream a(OutputStream outputStream);

    OutputStream b(OutputStream outputStream);
}
