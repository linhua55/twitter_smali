package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.crypto.rainbow.RainbowSigner;

/* compiled from: Twttr */
public class SignatureSpi extends java.security.SignatureSpi {
    private Digest a;
    private RainbowSigner b;
    private SecureRandom c;

    /* compiled from: Twttr */
    public class withSha224 extends SignatureSpi {
        public withSha224() {
            super(new SHA224Digest(), new RainbowSigner());
        }
    }

    /* compiled from: Twttr */
    public class withSha256 extends SignatureSpi {
        public withSha256() {
            super(new SHA256Digest(), new RainbowSigner());
        }
    }

    /* compiled from: Twttr */
    public class withSha384 extends SignatureSpi {
        public withSha384() {
            super(new SHA384Digest(), new RainbowSigner());
        }
    }

    /* compiled from: Twttr */
    public class withSha512 extends SignatureSpi {
        public withSha512() {
            super(new SHA512Digest(), new RainbowSigner());
        }
    }

    protected SignatureSpi(Digest digest, RainbowSigner rainbowSigner) {
        this.a = digest;
        this.b = rainbowSigner;
    }

    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        CipherParameters a = RainbowKeysToParams.a(publicKey);
        this.a.c();
        this.b.a(false, a);
    }

    protected void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.c = secureRandom;
        engineInitSign(privateKey);
    }

    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        CipherParameters parametersWithRandom;
        CipherParameters a = RainbowKeysToParams.a(privateKey);
        if (this.c != null) {
            parametersWithRandom = new ParametersWithRandom(a, this.c);
        } else {
            parametersWithRandom = a;
        }
        this.a.c();
        this.b.a(true, parametersWithRandom);
    }

    protected void engineUpdate(byte b) throws SignatureException {
        this.a.a(b);
    }

    protected void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.a.a(bArr, i, i2);
    }

    protected byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.a.b()];
        this.a.a(bArr, 0);
        try {
            return this.b.a(bArr);
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    protected boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.a.b()];
        this.a.a(bArr2, 0);
        return this.b.a(bArr2, bArr);
    }

    protected void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    protected void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    protected Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }
}
