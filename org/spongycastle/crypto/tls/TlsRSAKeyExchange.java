package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;
import org.spongycastle.util.io.Streams;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class TlsRSAKeyExchange extends AbstractTlsKeyExchange {
    protected AsymmetricKeyParameter d;
    protected RSAKeyParameters e;
    protected TlsEncryptionCredentials f;
    protected byte[] g;

    public TlsRSAKeyExchange(Vector vector) {
        super(1, vector);
        this.d = null;
        this.e = null;
        this.f = null;
    }

    public void e() throws IOException {
        throw new TlsFatalAlert((short) 10);
    }

    public void a(TlsCredentials tlsCredentials) throws IOException {
        if (tlsCredentials instanceof TlsEncryptionCredentials) {
            a(tlsCredentials.a());
            this.f = (TlsEncryptionCredentials) tlsCredentials;
            return;
        }
        throw new TlsFatalAlert((short) 80);
    }

    public void a(Certificate certificate) throws IOException {
        if (certificate.c()) {
            throw new TlsFatalAlert((short) 42);
        }
        Certificate a = certificate.a(0);
        try {
            this.d = PublicKeyFactory.a(a.k());
            if (this.d.a()) {
                throw new TlsFatalAlert((short) 80);
            }
            this.e = a((RSAKeyParameters) this.d);
            TlsUtils.a(a, 32);
            super.a(certificate);
        } catch (RuntimeException e) {
            throw new TlsFatalAlert((short) 43);
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
                    i++;
                default:
                    throw new TlsFatalAlert((short) 47);
            }
        }
    }

    public void b(TlsCredentials tlsCredentials) throws IOException {
        if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    public void a(OutputStream outputStream) throws IOException {
        this.g = TlsRSAUtils.a(this.c, this.e, outputStream);
    }

    public void b(InputStream inputStream) throws IOException {
        byte[] a;
        if (TlsUtils.a(this.c)) {
            a = Streams.a(inputStream);
        } else {
            a = TlsUtils.f(inputStream);
        }
        this.g = this.f.a(a);
    }

    public byte[] f() throws IOException {
        if (this.g == null) {
            throw new TlsFatalAlert((short) 80);
        }
        byte[] bArr = this.g;
        this.g = null;
        return bArr;
    }

    protected RSAKeyParameters a(RSAKeyParameters rSAKeyParameters) throws IOException {
        if (rSAKeyParameters.c().isProbablePrime(2)) {
            return rSAKeyParameters;
        }
        throw new TlsFatalAlert((short) 47);
    }
}
