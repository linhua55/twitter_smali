package org.spongycastle.crypto.tls;

/* compiled from: Twttr */
public abstract class AbstractTlsServer extends AbstractTlsPeer implements TlsServer {
    protected TlsCipherFactory a;

    public AbstractTlsServer() {
        this(new DefaultTlsCipherFactory());
    }

    public AbstractTlsServer(TlsCipherFactory tlsCipherFactory) {
        this.a = tlsCipherFactory;
    }
}
