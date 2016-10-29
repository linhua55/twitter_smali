package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.DSAKey;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.HMacDSAKCalculator;

/* compiled from: Twttr */
public class DSASigner extends SignatureSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers {
    private Digest bD;
    private DSA bE;
    private SecureRandom bF;

    /* compiled from: Twttr */
    public class detDSA224 extends DSASigner {
        public detDSA224() {
            super(new SHA224Digest(), new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA224Digest())));
        }
    }

    /* compiled from: Twttr */
    public class detDSA256 extends DSASigner {
        public detDSA256() {
            super(new SHA256Digest(), new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA256Digest())));
        }
    }

    /* compiled from: Twttr */
    public class detDSA384 extends DSASigner {
        public detDSA384() {
            super(new SHA384Digest(), new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA384Digest())));
        }
    }

    /* compiled from: Twttr */
    public class detDSA512 extends DSASigner {
        public detDSA512() {
            super(new SHA512Digest(), new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA512Digest())));
        }
    }

    /* compiled from: Twttr */
    public class detDSA extends DSASigner {
        public detDSA() {
            super(new SHA1Digest(), new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA1Digest())));
        }
    }

    /* compiled from: Twttr */
    public class dsa224 extends DSASigner {
        public dsa224() {
            super(new SHA224Digest(), new org.spongycastle.crypto.signers.DSASigner());
        }
    }

    /* compiled from: Twttr */
    public class dsa256 extends DSASigner {
        public dsa256() {
            super(new SHA256Digest(), new org.spongycastle.crypto.signers.DSASigner());
        }
    }

    /* compiled from: Twttr */
    public class dsa384 extends DSASigner {
        public dsa384() {
            super(new SHA384Digest(), new org.spongycastle.crypto.signers.DSASigner());
        }
    }

    /* compiled from: Twttr */
    public class dsa512 extends DSASigner {
        public dsa512() {
            super(new SHA512Digest(), new org.spongycastle.crypto.signers.DSASigner());
        }
    }

    /* compiled from: Twttr */
    public class noneDSA extends DSASigner {
        public noneDSA() {
            super(new NullDigest(), new org.spongycastle.crypto.signers.DSASigner());
        }
    }

    /* compiled from: Twttr */
    public class stdDSA extends DSASigner {
        public stdDSA() {
            super(new SHA1Digest(), new org.spongycastle.crypto.signers.DSASigner());
        }
    }

    protected DSASigner(Digest digest, DSA dsa) {
        this.bD = digest;
        this.bE = dsa;
    }

    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        CipherParameters a;
        if (publicKey instanceof DSAKey) {
            a = DSAUtil.a(publicKey);
        } else {
            try {
                PublicKey bCDSAPublicKey = new BCDSAPublicKey(SubjectPublicKeyInfo.a(publicKey.getEncoded()));
                if (bCDSAPublicKey instanceof DSAKey) {
                    a = DSAUtil.a(bCDSAPublicKey);
                } else {
                    throw new InvalidKeyException("can't recognise key type in DSA based signer");
                }
            } catch (Exception e) {
                throw new InvalidKeyException("can't recognise key type in DSA based signer");
            }
        }
        this.bD.c();
        this.bE.a(false, a);
    }

    protected void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.bF = secureRandom;
        engineInitSign(privateKey);
    }

    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        CipherParameters parametersWithRandom;
        CipherParameters a = DSAUtil.a(privateKey);
        if (this.bF != null) {
            parametersWithRandom = new ParametersWithRandom(a, this.bF);
        } else {
            parametersWithRandom = a;
        }
        this.bD.c();
        this.bE.a(true, parametersWithRandom);
    }

    protected void engineUpdate(byte b) throws SignatureException {
        this.bD.a(b);
    }

    protected void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.bD.a(bArr, i, i2);
    }

    protected byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.bD.b()];
        this.bD.a(bArr, 0);
        try {
            BigInteger[] a = this.bE.a(bArr);
            return a(a[0], a[1]);
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    protected boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.bD.b()];
        this.bD.a(bArr2, 0);
        try {
            BigInteger[] a = a(bArr);
            return this.bE.a(bArr2, a[0], a[1]);
        } catch (Exception e) {
            throw new SignatureException("error decoding signature bytes.");
        }
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

    private byte[] a(BigInteger bigInteger, BigInteger bigInteger2) throws IOException {
        return new DERSequence(new ASN1Integer[]{new ASN1Integer(bigInteger), new ASN1Integer(bigInteger2)}).a("DER");
    }

    private BigInteger[] a(byte[] bArr) throws IOException {
        ASN1Sequence aSN1Sequence = (ASN1Sequence) ASN1Primitive.b(bArr);
        return new BigInteger[]{((ASN1Integer) aSN1Sequence.a(0)).a(), ((ASN1Integer) aSN1Sequence.a(1)).a()};
    }
}
