package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class TlsECDHKeyExchange extends AbstractTlsKeyExchange {
    protected TlsSigner e;
    protected int[] f;
    protected short[] g;
    protected short[] h;
    protected AsymmetricKeyParameter i;
    protected TlsAgreementCredentials j;
    protected ECPrivateKeyParameters k;
    protected ECPublicKeyParameters l;

    public TlsECDHKeyExchange(int i, Vector vector, int[] iArr, short[] sArr, short[] sArr2) {
        super(i, vector);
        switch (i) {
            case p.Toolbar_titleMarginBottom /*16*/:
            case p.Toolbar_collapseIcon /*18*/:
                this.e = null;
                break;
            case p.Toolbar_maxButtonHeight /*17*/:
                this.e = new TlsECDSASigner();
                break;
            case p.Toolbar_collapseContentDescription /*19*/:
                this.e = new TlsRSASigner();
                break;
            default:
                throw new IllegalArgumentException("unsupported key exchange algorithm");
        }
        this.a = i;
        this.f = iArr;
        this.g = sArr;
        this.h = sArr2;
    }

    public void a(TlsContext tlsContext) {
        super.a(tlsContext);
        if (this.e != null) {
            this.e.a(tlsContext);
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
            if (this.e == null) {
                try {
                    this.l = TlsECCUtils.a((ECPublicKeyParameters) this.i);
                    TlsUtils.a(a, 8);
                } catch (ClassCastException e) {
                    throw new TlsFatalAlert((short) 46);
                }
            } else if (this.e.a(this.i)) {
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
            case p.Toolbar_maxButtonHeight /*17*/:
            case p.Toolbar_collapseContentDescription /*19*/:
            case p.Toolbar_navigationIcon /*20*/:
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
                case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
                case ApiRunnable.ACTION_CODE_ACCESS_VIDEO /*65*/:
                case ApiRunnable.ACTION_CODE_ACCESS_CHAT /*66*/:
                    i++;
                default:
                    throw new TlsFatalAlert((short) 47);
            }
        }
    }

    public void b(TlsCredentials tlsCredentials) throws IOException {
        if (tlsCredentials instanceof TlsAgreementCredentials) {
            this.j = (TlsAgreementCredentials) tlsCredentials;
        } else if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    public void a(OutputStream outputStream) throws IOException {
        if (this.j == null) {
            this.k = TlsECCUtils.a(this.c.b(), this.h, this.l.b(), outputStream);
        }
    }

    public void b(Certificate certificate) throws IOException {
    }

    public void b(InputStream inputStream) throws IOException {
        if (this.l == null) {
            byte[] e = TlsUtils.e(inputStream);
            this.l = TlsECCUtils.a(TlsECCUtils.a(this.h, this.k.b(), e));
        }
    }

    public byte[] f() throws IOException {
        if (this.j != null) {
            return this.j.a(this.l);
        }
        if (this.k != null) {
            return TlsECCUtils.a(this.l, this.k);
        }
        throw new TlsFatalAlert((short) 80);
    }
}
