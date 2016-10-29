package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
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
import org.spongycastle.pqc.crypto.mceliece.McElieceKeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McEliecePKCSCipher;
import org.spongycastle.pqc.jcajce.provider.util.AsymmetricBlockCipher;

/* compiled from: Twttr */
public class McEliecePKCSCipherSpi extends AsymmetricBlockCipher implements PKCSObjectIdentifiers, X509ObjectIdentifiers {
    private Digest bD;
    private McEliecePKCSCipher bE;

    /* compiled from: Twttr */
    public class McEliecePKCS224 extends McEliecePKCSCipherSpi {
        public McEliecePKCS224() {
            super(new SHA224Digest(), new McEliecePKCSCipher());
        }
    }

    /* compiled from: Twttr */
    public class McEliecePKCS256 extends McEliecePKCSCipherSpi {
        public McEliecePKCS256() {
            super(new SHA256Digest(), new McEliecePKCSCipher());
        }
    }

    /* compiled from: Twttr */
    public class McEliecePKCS384 extends McEliecePKCSCipherSpi {
        public McEliecePKCS384() {
            super(new SHA384Digest(), new McEliecePKCSCipher());
        }
    }

    /* compiled from: Twttr */
    public class McEliecePKCS512 extends McEliecePKCSCipherSpi {
        public McEliecePKCS512() {
            super(new SHA512Digest(), new McEliecePKCSCipher());
        }
    }

    /* compiled from: Twttr */
    public class McEliecePKCS extends McEliecePKCSCipherSpi {
        public McEliecePKCS() {
            super(new SHA1Digest(), new McEliecePKCSCipher());
        }
    }

    public McEliecePKCSCipherSpi(Digest digest, McEliecePKCSCipher mcEliecePKCSCipher) {
        this.bD = digest;
        this.bE = mcEliecePKCSCipher;
    }

    protected void a(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters parametersWithRandom = new ParametersWithRandom(McElieceKeysToParams.a((PublicKey) key), secureRandom);
        this.bD.c();
        this.bE.a(true, parametersWithRandom);
        this.D_ = this.bE.a;
        this.c = this.bE.b;
    }

    protected void a(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters a = McElieceKeysToParams.a((PrivateKey) key);
        this.bD.c();
        this.bE.a(false, a);
        this.D_ = this.bE.a;
        this.c = this.bE.b;
    }

    protected byte[] a(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2 = null;
        try {
            bArr2 = this.bE.a(bArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bArr2;
    }

    protected byte[] b(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2 = null;
        try {
            bArr2 = this.bE.b(bArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bArr2;
    }

    public int a(Key key) throws InvalidKeyException {
        McElieceKeyParameters mcElieceKeyParameters;
        if (key instanceof PublicKey) {
            mcElieceKeyParameters = (McElieceKeyParameters) McElieceKeysToParams.a((PublicKey) key);
        } else {
            mcElieceKeyParameters = (McElieceKeyParameters) McElieceKeysToParams.a((PrivateKey) key);
        }
        return this.bE.a(mcElieceKeyParameters);
    }
}
