package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2KeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceFujisakiCipher;
import org.spongycastle.pqc.jcajce.provider.util.AsymmetricHybridCipher;

/* compiled from: Twttr */
public class McElieceFujisakiCipherSpi extends AsymmetricHybridCipher implements PKCSObjectIdentifiers, X509ObjectIdentifiers {
    private Digest bD;
    private McElieceFujisakiCipher bE;
    private ByteArrayOutputStream bF;

    /* compiled from: Twttr */
    public class McElieceFujisaki224 extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki224() {
            super(new SHA224Digest(), new McElieceFujisakiCipher());
        }
    }

    /* compiled from: Twttr */
    public class McElieceFujisaki256 extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki256() {
            super(new SHA256Digest(), new McElieceFujisakiCipher());
        }
    }

    /* compiled from: Twttr */
    public class McElieceFujisaki384 extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki384() {
            super(new SHA384Digest(), new McElieceFujisakiCipher());
        }
    }

    /* compiled from: Twttr */
    public class McElieceFujisaki512 extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki512() {
            super(new SHA512Digest(), new McElieceFujisakiCipher());
        }
    }

    /* compiled from: Twttr */
    public class McElieceFujisaki extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki() {
            super(new SHA1Digest(), new McElieceFujisakiCipher());
        }
    }

    protected McElieceFujisakiCipherSpi(Digest digest, McElieceFujisakiCipher mcElieceFujisakiCipher) {
        this.bD = digest;
        this.bE = mcElieceFujisakiCipher;
        this.bF = new ByteArrayOutputStream();
    }

    public byte[] a(byte[] bArr, int i, int i2) {
        this.bF.write(bArr, i, i2);
        return new byte[0];
    }

    public byte[] b(byte[] bArr, int i, int i2) throws BadPaddingException {
        a(bArr, i, i2);
        byte[] toByteArray = this.bF.toByteArray();
        this.bF.reset();
        if (this.C_ == 1) {
            try {
                return this.bE.a(toByteArray);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            if (this.C_ == 2) {
                try {
                    return this.bE.b(toByteArray);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return null;
        }
    }

    protected int a(int i) {
        return 0;
    }

    protected int b(int i) {
        return 0;
    }

    protected void a(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters parametersWithRandom = new ParametersWithRandom(McElieceCCA2KeysToParams.a((PublicKey) key), secureRandom);
        this.bD.c();
        this.bE.a(true, parametersWithRandom);
    }

    protected void a(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters a = McElieceCCA2KeysToParams.a((PrivateKey) key);
        this.bD.c();
        this.bE.a(false, a);
    }

    public int a(Key key) throws InvalidKeyException {
        McElieceCCA2KeyParameters mcElieceCCA2KeyParameters;
        if (key instanceof PublicKey) {
            mcElieceCCA2KeyParameters = (McElieceCCA2KeyParameters) McElieceCCA2KeysToParams.a((PublicKey) key);
        } else {
            mcElieceCCA2KeyParameters = (McElieceCCA2KeyParameters) McElieceCCA2KeysToParams.a((PrivateKey) key);
        }
        return this.bE.a(mcElieceCCA2KeyParameters);
    }
}
