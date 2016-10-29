package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.io.TeeInputStream;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class TlsECDHEKeyExchange extends TlsECDHKeyExchange {
    protected TlsSignerCredentials d;

    public TlsECDHEKeyExchange(int i, Vector vector, int[] iArr, short[] sArr, short[] sArr2) {
        super(i, vector, iArr, sArr, sArr2);
        this.d = null;
    }

    public void a(TlsCredentials tlsCredentials) throws IOException {
        if (tlsCredentials instanceof TlsSignerCredentials) {
            a(tlsCredentials.a());
            this.d = (TlsSignerCredentials) tlsCredentials;
            return;
        }
        throw new TlsFatalAlert((short) 80);
    }

    public byte[] b() throws IOException {
        int i;
        ECDomainParameters b;
        SignatureAndHashAlgorithm signatureAndHashAlgorithm = null;
        if (this.f == null) {
            i = 23;
        } else {
            for (int i2 : this.f) {
                if (NamedCurve.a(i2) && TlsECCUtils.d(i2)) {
                    break;
                }
            }
            i2 = -1;
        }
        if (i2 >= 0) {
            b = TlsECCUtils.b(i2);
        } else if (Arrays.a(this.f, 65281)) {
            b = TlsECCUtils.b(23);
        } else if (Arrays.a(this.f, 65282)) {
            b = TlsECCUtils.b(10);
        } else {
            b = null;
        }
        if (b == null) {
            throw new TlsFatalAlert((short) 80);
        }
        Digest b2;
        AsymmetricCipherKeyPair a = TlsECCUtils.a(this.c.b(), b);
        this.k = (ECPrivateKeyParameters) a.b();
        OutputStream digestInputBuffer = new DigestInputBuffer();
        if (i2 < 0) {
            TlsECCUtils.a(this.g, b, digestInputBuffer);
        } else {
            TlsECCUtils.b(i2, digestInputBuffer);
        }
        TlsECCUtils.a(this.g, ((ECPublicKeyParameters) a.a()).c(), digestInputBuffer);
        if (TlsUtils.c(this.c)) {
            signatureAndHashAlgorithm = this.d.br_();
            if (signatureAndHashAlgorithm == null) {
                throw new TlsFatalAlert((short) 80);
            }
            b2 = TlsUtils.b(signatureAndHashAlgorithm.a());
        } else {
            b2 = new CombinedHash();
        }
        SecurityParameters c = this.c.c();
        b2.a(c.g, 0, c.g.length);
        b2.a(c.h, 0, c.h.length);
        digestInputBuffer.a(b2);
        byte[] bArr = new byte[b2.b()];
        b2.a(bArr, 0);
        new DigitallySigned(signatureAndHashAlgorithm, this.d.a(bArr)).a(digestInputBuffer);
        return digestInputBuffer.toByteArray();
    }

    public void a(InputStream inputStream) throws IOException {
        SecurityParameters c = this.c.c();
        OutputStream signerInputBuffer = new SignerInputBuffer();
        InputStream teeInputStream = new TeeInputStream(inputStream, signerInputBuffer);
        ECDomainParameters a = TlsECCUtils.a(this.f, this.g, teeInputStream);
        byte[] e = TlsUtils.e(teeInputStream);
        DigitallySigned a2 = DigitallySigned.a(this.c, inputStream);
        Signer a3 = a(this.e, a2.a(), c);
        signerInputBuffer.a(a3);
        if (a3.a(a2.b())) {
            this.l = TlsECCUtils.a(TlsECCUtils.a(this.g, a, e));
            return;
        }
        throw new TlsFatalAlert((short) 51);
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

    protected Signer a(TlsSigner tlsSigner, SignatureAndHashAlgorithm signatureAndHashAlgorithm, SecurityParameters securityParameters) {
        Signer a = tlsSigner.a(signatureAndHashAlgorithm, this.i);
        a.a(securityParameters.g, 0, securityParameters.g.length);
        a.a(securityParameters.h, 0, securityParameters.h.length);
        return a;
    }
}
