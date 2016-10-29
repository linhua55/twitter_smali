package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.signers.GenericSigner;
import org.spongycastle.crypto.signers.RSADigestSigner;

/* compiled from: Twttr */
public class TlsRSASigner extends AbstractTlsSigner {
    public byte[] a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr) throws CryptoException {
        Signer a = a(signatureAndHashAlgorithm, true, true, new ParametersWithRandom(asymmetricKeyParameter, this.a.b()));
        a.a(bArr, 0, bArr.length);
        return a.a();
    }

    public boolean a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, byte[] bArr, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr2) throws CryptoException {
        Signer a = a(signatureAndHashAlgorithm, true, false, (CipherParameters) asymmetricKeyParameter);
        a.a(bArr2, 0, bArr2.length);
        return a.a(bArr);
    }

    public Signer a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, AsymmetricKeyParameter asymmetricKeyParameter) {
        return a(signatureAndHashAlgorithm, false, false, (CipherParameters) asymmetricKeyParameter);
    }

    public boolean a(AsymmetricKeyParameter asymmetricKeyParameter) {
        return (asymmetricKeyParameter instanceof RSAKeyParameters) && !asymmetricKeyParameter.a();
    }

    protected Signer a(SignatureAndHashAlgorithm signatureAndHashAlgorithm, boolean z, boolean z2, CipherParameters cipherParameters) {
        if ((signatureAndHashAlgorithm != null) != TlsUtils.c(this.a)) {
            throw new IllegalStateException();
        } else if (signatureAndHashAlgorithm == null || signatureAndHashAlgorithm.b() == (short) 1) {
            Digest nullDigest;
            Signer rSADigestSigner;
            if (z) {
                nullDigest = new NullDigest();
            } else if (signatureAndHashAlgorithm == null) {
                Object combinedHash = new CombinedHash();
            } else {
                nullDigest = TlsUtils.b(signatureAndHashAlgorithm.a());
            }
            if (signatureAndHashAlgorithm != null) {
                rSADigestSigner = new RSADigestSigner(nullDigest, TlsUtils.c(signatureAndHashAlgorithm.a()));
            } else {
                rSADigestSigner = new GenericSigner(a(), nullDigest);
            }
            rSADigestSigner.a(z2, cipherParameters);
            return rSADigestSigner;
        } else {
            throw new IllegalStateException();
        }
    }

    protected AsymmetricBlockCipher a() {
        return new PKCS1Encoding(new RSABlindedEngine());
    }
}
