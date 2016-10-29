package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class AbstractTlsKeyExchange implements TlsKeyExchange {
    protected int a;
    protected Vector b;
    protected TlsContext c;

    protected AbstractTlsKeyExchange(int i, Vector vector) {
        this.a = i;
        this.b = vector;
    }

    public void a(TlsContext tlsContext) {
        this.c = tlsContext;
        ProtocolVersion d = tlsContext.d();
        if (TlsUtils.a(d)) {
            if (this.b == null) {
                switch (this.a) {
                    case p.View_android_focusable /*1*/:
                    case p.Toolbar_contentInsetStart /*5*/:
                    case p.Toolbar_popupTheme /*9*/:
                    case p.Toolbar_titleMarginTop /*15*/:
                    case p.Toolbar_collapseIcon /*18*/:
                    case p.Toolbar_collapseContentDescription /*19*/:
                    case p.Toolbar_titleTextColor /*23*/:
                        this.b = TlsUtils.c();
                    case p.View_paddingEnd /*3*/:
                    case p.Toolbar_contentInsetLeft /*7*/:
                    case p.Toolbar_logoDescription /*22*/:
                        this.b = TlsUtils.a();
                    case p.Toolbar_titleMarginStart /*13*/:
                    case p.Toolbar_titleMarginEnd /*14*/:
                    case p.Toolbar_navigationContentDescription /*21*/:
                    case p.Toolbar_subtitleTextColor /*24*/:
                    case p.Toolbar_titleMarginBottom /*16*/:
                    case p.Toolbar_maxButtonHeight /*17*/:
                        this.b = TlsUtils.b();
                    default:
                        throw new IllegalStateException("unsupported key exchange algorithm");
                }
            }
        } else if (this.b != null) {
            throw new IllegalStateException("supported_signature_algorithms not allowed for " + d);
        }
    }

    public void a(Certificate certificate) throws IOException {
        if (this.b != null) {
        }
    }

    public void a(TlsCredentials tlsCredentials) throws IOException {
        a(tlsCredentials.a());
    }

    public boolean a() {
        return false;
    }

    public byte[] b() throws IOException {
        if (!a()) {
            return null;
        }
        throw new TlsFatalAlert((short) 80);
    }

    public void c() throws IOException {
        if (a()) {
            throw new TlsFatalAlert((short) 10);
        }
    }

    public void a(InputStream inputStream) throws IOException {
        if (!a()) {
            throw new TlsFatalAlert((short) 10);
        }
    }

    public void d() throws IOException {
    }

    public void b(Certificate certificate) throws IOException {
    }

    public void b(InputStream inputStream) throws IOException {
        throw new TlsFatalAlert((short) 80);
    }
}
