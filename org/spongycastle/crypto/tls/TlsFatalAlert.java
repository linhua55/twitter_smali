package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public class TlsFatalAlert extends IOException {
    private static final long serialVersionUID = 3584313123679111168L;
    private short alertDescription;

    public TlsFatalAlert(short s) {
        this.alertDescription = s;
    }

    public short a() {
        return this.alertDescription;
    }
}
