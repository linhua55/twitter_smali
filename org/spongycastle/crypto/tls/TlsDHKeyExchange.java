package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Vector;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class TlsDHKeyExchange extends AbstractTlsKeyExchange {
    protected static final BigInteger e;
    protected static final BigInteger f;
    protected TlsSigner g;
    protected DHParameters h;
    protected AsymmetricKeyParameter i;
    protected DHPublicKeyParameters j;
    protected TlsAgreementCredentials k;
    protected DHPrivateKeyParameters l;
    protected DHPrivateKeyParameters m;
    protected DHPublicKeyParameters n;

    static {
        e = BigInteger.valueOf(1);
        f = BigInteger.valueOf(2);
    }

    public TlsDHKeyExchange(int i, Vector vector, DHParameters dHParameters) {
        super(i, vector);
        switch (i) {
            case p.View_paddingEnd /*3*/:
                this.g = new TlsDSSSigner();
                break;
            case p.Toolbar_contentInsetStart /*5*/:
                this.g = new TlsRSASigner();
                break;
            case p.Toolbar_contentInsetLeft /*7*/:
            case p.Toolbar_popupTheme /*9*/:
                this.g = null;
                break;
            default:
                throw new IllegalArgumentException("unsupported key exchange algorithm");
        }
        this.h = dHParameters;
    }

    public void a(TlsContext tlsContext) {
        super.a(tlsContext);
        if (this.g != null) {
            this.g.a(tlsContext);
        }
    }

    public void e() throws IOException {
        throw new TlsFatalAlert((short) 10);
    }

    public void a(Certificate certificate) throws IOException {
        if (certificate.c()) {
            throw new TlsFatalAlert((short) 42);
        }
        Certificate a = certificate.a(0);
        try {
            this.i = PublicKeyFactory.a(a.k());
            if (this.g == null) {
                try {
                    this.j = TlsDHUtils.a((DHPublicKeyParameters) this.i);
                    TlsUtils.a(a, 8);
                } catch (ClassCastException e) {
                    throw new TlsFatalAlert((short) 46);
                }
            } else if (this.g.a(this.i)) {
                TlsUtils.a(a, 128);
            } else {
                throw new TlsFatalAlert((short) 46);
            }
            super.a(certificate);
        } catch (RuntimeException e2) {
            throw new TlsFatalAlert((short) 43);
        }
    }

    public boolean a() {
        switch (this.a) {
            case p.View_paddingEnd /*3*/:
            case p.Toolbar_contentInsetStart /*5*/:
            case p.Toolbar_subtitleTextAppearance /*11*/:
                return true;
            default:
                return false;
        }
    }

    public void a(CertificateRequest certificateRequest) throws IOException {
        short[] a = certificateRequest.a();
        int i = 0;
        while (i < a.length) {
            switch (a[i]) {
                case p.View_android_focusable /*1*/:
                case p.View_paddingStart /*2*/:
                case p.View_paddingEnd /*3*/:
                case p.View_theme /*4*/:
                case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
                    i++;
                default:
                    throw new TlsFatalAlert((short) 47);
            }
        }
    }

    public void b(TlsCredentials tlsCredentials) throws IOException {
        if (tlsCredentials instanceof TlsAgreementCredentials) {
            this.k = (TlsAgreementCredentials) tlsCredentials;
        } else if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    public void a(OutputStream outputStream) throws IOException {
        if (this.k == null) {
            this.l = TlsDHUtils.a(this.c.b(), this.j.b(), outputStream);
        }
    }

    public byte[] f() throws IOException {
        if (this.k != null) {
            return this.k.a(this.j);
        }
        if (this.m != null) {
            return TlsDHUtils.a(this.n, this.m);
        }
        if (this.l != null) {
            return TlsDHUtils.a(this.j, this.l);
        }
        throw new TlsFatalAlert((short) 80);
    }
}
