package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.util.io.TeeInputStream;

/* compiled from: Twttr */
public class TlsDHEKeyExchange extends TlsDHKeyExchange {
    protected TlsSignerCredentials d;

    public TlsDHEKeyExchange(int i, Vector vector, DHParameters dHParameters) {
        super(i, vector, dHParameters);
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
        if (this.h == null) {
            throw new TlsFatalAlert((short) 80);
        }
        SignatureAndHashAlgorithm br_;
        Digest b;
        OutputStream digestInputBuffer = new DigestInputBuffer();
        this.m = TlsDHUtils.b(this.c.b(), this.h, digestInputBuffer);
        if (TlsUtils.c(this.c)) {
            br_ = this.d.br_();
            if (br_ == null) {
                throw new TlsFatalAlert((short) 80);
            }
            b = TlsUtils.b(br_.a());
        } else {
            br_ = null;
            b = new CombinedHash();
        }
        SecurityParameters c = this.c.c();
        b.a(c.g, 0, c.g.length);
        b.a(c.h, 0, c.h.length);
        digestInputBuffer.a(b);
        byte[] bArr = new byte[b.b()];
        b.a(bArr, 0);
        new DigitallySigned(br_, this.d.a(bArr)).a(digestInputBuffer);
        return digestInputBuffer.toByteArray();
    }

    public void a(InputStream inputStream) throws IOException {
        SecurityParameters c = this.c.c();
        OutputStream signerInputBuffer = new SignerInputBuffer();
        ServerDHParams a = ServerDHParams.a(new TeeInputStream(inputStream, signerInputBuffer));
        DigitallySigned a2 = DigitallySigned.a(this.c, inputStream);
        Signer a3 = a(this.g, a2.a(), c);
        signerInputBuffer.a(a3);
        if (a3.a(a2.b())) {
            this.j = TlsDHUtils.a(a.a());
            return;
        }
        throw new TlsFatalAlert((short) 51);
    }

    protected Signer a(TlsSigner tlsSigner, SignatureAndHashAlgorithm signatureAndHashAlgorithm, SecurityParameters securityParameters) {
        Signer a = tlsSigner.a(signatureAndHashAlgorithm, this.i);
        a.a(securityParameters.g, 0, securityParameters.g.length);
        a.a(securityParameters.h, 0, securityParameters.h.length);
        return a;
    }
}
