package org.spongycastle.crypto.signers;

import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;

/* compiled from: Twttr */
public class DSADigestSigner implements Signer {
    private final Digest a;
    private final DSA b;
    private boolean c;

    public DSADigestSigner(DSA dsa, Digest digest) {
        this.a = digest;
        this.b = dsa;
    }

    public void a(boolean z, CipherParameters cipherParameters) {
        this.c = z;
        AsymmetricKeyParameter asymmetricKeyParameter;
        if (cipherParameters instanceof ParametersWithRandom) {
            asymmetricKeyParameter = (AsymmetricKeyParameter) ((ParametersWithRandom) cipherParameters).b();
        } else {
            asymmetricKeyParameter = (AsymmetricKeyParameter) cipherParameters;
        }
        if (z && !r0.a()) {
            throw new IllegalArgumentException("Signing Requires Private Key.");
        } else if (z || !r0.a()) {
            b();
            this.b.a(z, cipherParameters);
        } else {
            throw new IllegalArgumentException("Verification Requires Public Key.");
        }
    }

    public void a(byte b) {
        this.a.a(b);
    }

    public void a(byte[] bArr, int i, int i2) {
        this.a.a(bArr, i, i2);
    }

    public byte[] a() {
        if (this.c) {
            byte[] bArr = new byte[this.a.b()];
            this.a.a(bArr, 0);
            BigInteger[] a = this.b.a(bArr);
            try {
                return a(a[0], a[1]);
            } catch (IOException e) {
                throw new IllegalStateException("unable to encode signature");
            }
        }
        throw new IllegalStateException("DSADigestSigner not initialised for signature generation.");
    }

    public boolean a(byte[] bArr) {
        boolean z = false;
        if (this.c) {
            throw new IllegalStateException("DSADigestSigner not initialised for verification");
        }
        byte[] bArr2 = new byte[this.a.b()];
        this.a.a(bArr2, z);
        try {
            BigInteger[] b = b(bArr);
            z = this.b.a(bArr2, b[0], b[1]);
        } catch (IOException e) {
        }
        return z;
    }

    public void b() {
        this.a.c();
    }

    private byte[] a(BigInteger bigInteger, BigInteger bigInteger2) throws IOException {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(bigInteger));
        aSN1EncodableVector.a(new ASN1Integer(bigInteger2));
        return new DERSequence(aSN1EncodableVector).a("DER");
    }

    private BigInteger[] b(byte[] bArr) throws IOException {
        ASN1Sequence aSN1Sequence = (ASN1Sequence) ASN1Primitive.b(bArr);
        return new BigInteger[]{((ASN1Integer) aSN1Sequence.a(0)).a(), ((ASN1Integer) aSN1Sequence.a(1)).a()};
    }
}
