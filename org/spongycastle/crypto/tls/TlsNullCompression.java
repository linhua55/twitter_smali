package org.spongycastle.crypto.tls;

import java.io.OutputStream;

/* compiled from: Twttr */
public class TlsNullCompression implements TlsCompression {
    public OutputStream a(OutputStream outputStream) {
        return outputStream;
    }

    public OutputStream b(OutputStream outputStream) {
        return outputStream;
    }
}
