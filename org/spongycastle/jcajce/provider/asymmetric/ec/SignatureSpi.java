package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.ECDSASigner;
import org.spongycastle.crypto.signers.ECNRSigner;
import org.spongycastle.crypto.signers.HMacDSAKCalculator;
import org.spongycastle.jcajce.provider.asymmetric.util.DSABase;
import org.spongycastle.jcajce.provider.asymmetric.util.DSAEncoder;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;

/* compiled from: Twttr */
public class SignatureSpi extends DSABase {

    /* compiled from: Twttr */
    class PlainDSAEncoder implements DSAEncoder {
        private PlainDSAEncoder() {
        }

        public byte[] a(BigInteger bigInteger, BigInteger bigInteger2) throws IOException {
            Object obj;
            Object a = a(bigInteger);
            Object a2 = a(bigInteger2);
            if (a.length > a2.length) {
                obj = new byte[(a.length * 2)];
            } else {
                obj = new byte[(a2.length * 2)];
            }
            System.arraycopy(a, 0, obj, (obj.length / 2) - a.length, a.length);
            System.arraycopy(a2, 0, obj, obj.length - a2.length, a2.length);
            return obj;
        }

        private byte[] a(BigInteger bigInteger) {
            Object toByteArray = bigInteger.toByteArray();
            if (toByteArray[0] != null) {
                return toByteArray;
            }
            Object obj = new byte[(toByteArray.length - 1)];
            System.arraycopy(toByteArray, 1, obj, 0, obj.length);
            return obj;
        }

        public BigInteger[] a(byte[] bArr) throws IOException {
            BigInteger[] bigIntegerArr = new BigInteger[2];
            Object obj = new byte[(bArr.length / 2)];
            Object obj2 = new byte[(bArr.length / 2)];
            System.arraycopy(bArr, 0, obj, 0, obj.length);
            System.arraycopy(bArr, obj.length, obj2, 0, obj2.length);
            bigIntegerArr[0] = new BigInteger(1, obj);
            bigIntegerArr[1] = new BigInteger(1, obj2);
            return bigIntegerArr;
        }
    }

    /* compiled from: Twttr */
    class StdDSAEncoder implements DSAEncoder {
        private StdDSAEncoder() {
        }

        public byte[] a(BigInteger bigInteger, BigInteger bigInteger2) throws IOException {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            aSN1EncodableVector.a(new ASN1Integer(bigInteger));
            aSN1EncodableVector.a(new ASN1Integer(bigInteger2));
            return new DERSequence(aSN1EncodableVector).a("DER");
        }

        public BigInteger[] a(byte[] bArr) throws IOException {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) ASN1Primitive.b(bArr);
            return new BigInteger[]{ASN1Integer.a(aSN1Sequence.a(0)).a(), ASN1Integer.a(aSN1Sequence.a(1)).a()};
        }
    }

    /* compiled from: Twttr */
    public class ecCVCDSA224 extends SignatureSpi {
        public ecCVCDSA224() {
            super(new SHA224Digest(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecCVCDSA256 extends SignatureSpi {
        public ecCVCDSA256() {
            super(new SHA256Digest(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecCVCDSA384 extends SignatureSpi {
        public ecCVCDSA384() {
            super(new SHA384Digest(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecCVCDSA512 extends SignatureSpi {
        public ecCVCDSA512() {
            super(new SHA512Digest(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecCVCDSA extends SignatureSpi {
        public ecCVCDSA() {
            super(new SHA1Digest(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDSA224 extends SignatureSpi {
        public ecDSA224() {
            super(new SHA224Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDSA256 extends SignatureSpi {
        public ecDSA256() {
            super(new SHA256Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDSA384 extends SignatureSpi {
        public ecDSA384() {
            super(new SHA384Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDSA512 extends SignatureSpi {
        public ecDSA512() {
            super(new SHA512Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDSA extends SignatureSpi {
        public ecDSA() {
            super(new SHA1Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDSARipeMD160 extends SignatureSpi {
        public ecDSARipeMD160() {
            super(new RIPEMD160Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDSAnone extends SignatureSpi {
        public ecDSAnone() {
            super(new NullDigest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDetDSA224 extends SignatureSpi {
        public ecDetDSA224() {
            super(new SHA224Digest(), new ECDSASigner(new HMacDSAKCalculator(new SHA224Digest())), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDetDSA256 extends SignatureSpi {
        public ecDetDSA256() {
            super(new SHA256Digest(), new ECDSASigner(new HMacDSAKCalculator(new SHA256Digest())), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDetDSA384 extends SignatureSpi {
        public ecDetDSA384() {
            super(new SHA384Digest(), new ECDSASigner(new HMacDSAKCalculator(new SHA384Digest())), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDetDSA512 extends SignatureSpi {
        public ecDetDSA512() {
            super(new SHA512Digest(), new ECDSASigner(new HMacDSAKCalculator(new SHA512Digest())), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecDetDSA extends SignatureSpi {
        public ecDetDSA() {
            super(new SHA1Digest(), new ECDSASigner(new HMacDSAKCalculator(new SHA1Digest())), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecNR224 extends SignatureSpi {
        public ecNR224() {
            super(new SHA224Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecNR256 extends SignatureSpi {
        public ecNR256() {
            super(new SHA256Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecNR384 extends SignatureSpi {
        public ecNR384() {
            super(new SHA384Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecNR512 extends SignatureSpi {
        public ecNR512() {
            super(new SHA512Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecNR extends SignatureSpi {
        public ecNR() {
            super(new SHA1Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* compiled from: Twttr */
    public class ecPlainDSARP160 extends SignatureSpi {
        public ecPlainDSARP160() {
            super(new RIPEMD160Digest(), new ECDSASigner(), new PlainDSAEncoder());
        }
    }

    SignatureSpi(Digest digest, DSA dsa, DSAEncoder dSAEncoder) {
        super(digest, dsa, dSAEncoder);
    }

    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        CipherParameters a = ECUtil.a(publicKey);
        this.bD.c();
        this.bE.a(false, a);
    }

    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        CipherParameters a = ECUtil.a(privateKey);
        this.bD.c();
        if (this.appRandom != null) {
            this.bE.a(true, new ParametersWithRandom(a, this.appRandom));
        } else {
            this.bE.a(true, a);
        }
    }
}
