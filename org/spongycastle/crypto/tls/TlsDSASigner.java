package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.DSADigestSigner;

/* compiled from: Twttr */
public abstract class TlsDSASigner extends AbstractTlsSigner {
    protected abstract DSA a(short s);

    protected abstract short a();

    public byte[] a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr) throws CryptoException {
        Signer a = a(signatureAndHashAlgorithm, true, true, new ParametersWithRandom(asymmetricKeyParameter, this.a.b()));
        if (signatureAndHashAlgorithm == null) {
            a.a(bArr, 16, 20);
        } else {
            a.a(bArr, 0, bArr.length);
        }
        return a.a();
    }

    public boolean a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, byte[] bArr, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr2) throws CryptoException {
        Signer a = a(signatureAndHashAlgorithm, true, false, (CipherParameters) asymmetricKeyParameter);
        if (signatureAndHashAlgorithm == null) {
            a.a(bArr2, 16, 20);
        } else {
            a.a(bArr2, 0, bArr2.length);
        }
        return a.a(bArr);
    }

    public Signer a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, AsymmetricKeyParameter asymmetricKeyParameter) {
        return a(signatureAndHashAlgorithm, false, false, (CipherParameters) asymmetricKeyParameter);
    }

    protected CipherParameters a(boolean z, CipherParameters cipherParameters) {
        return cipherParameters;
    }

    protected Signer a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, boolean z, boolean z2, CipherParameters cipherParameters) {
        short s = (short) 2;
        if ((signatureAndHashAlgorithm != null) != TlsUtils.c(this.a)) {
            throw new IllegalStateException();
        } else if (signatureAndHashAlgorithm == null || (signatureAndHashAlgorithm.a() == (short) 2 && signatureAndHashAlgorithm.b() == a())) {
            if (signatureAndHashAlgorithm != null) {
                s = signatureAndHashAlgorithm.a();
            }
            Signer dSADigestSigner = new DSADigestSigner(a(s), z ? new NullDigest() : TlsUtils.b(s));
            dSADigestSigner.a(z2, a(z2, cipherParameters));
            return dSADigestSigner;
        } else {
            throw new IllegalStateException();
        }
    }
}
