package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.field.PolynomialExtensionField;

/* compiled from: Twttr */
public class X9ECParameters extends ASN1Object implements X9ObjectIdentifiers {
    private static final BigInteger al;
    private X9FieldID am;
    private ECCurve an;
    private ECPoint ao;
    private BigInteger ap;
    private BigInteger aq;
    private byte[] ar;

    static {
        al = BigInteger.valueOf(1);
    }

    private X9ECParameters(ASN1Sequence aSN1Sequence) {
        if ((aSN1Sequence.a(0) instanceof ASN1Integer) && ((ASN1Integer) aSN1Sequence.a(0)).a().equals(al)) {
            X9Curve x9Curve = new X9Curve(X9FieldID.a(aSN1Sequence.a(1)), ASN1Sequence.a(aSN1Sequence.a(2)));
            this.an = x9Curve.a();
            ASN1Encodable a = aSN1Sequence.a(3);
            if (a instanceof X9ECPoint) {
                this.ao = ((X9ECPoint) a).a();
            } else {
                this.ao = new X9ECPoint(this.an, (ASN1OctetString) a).a();
            }
            this.ap = ((ASN1Integer) aSN1Sequence.a(4)).a();
            this.ar = x9Curve.b();
            if (aSN1Sequence.h() == 6) {
                this.aq = ((ASN1Integer) aSN1Sequence.a(5)).a();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("bad version in X9ECParameters");
    }

    public static X9ECParameters a(Object obj) {
        if (obj instanceof X9ECParameters) {
            return (X9ECParameters) obj;
        }
        if (obj != null) {
            return new X9ECParameters(ASN1Sequence.a(obj));
        }
        return null;
    }

    public X9ECParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, eCPoint, bigInteger, bigInteger2, null);
    }

    public X9ECParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.an = eCCurve;
        this.ao = eCPoint.p();
        this.ap = bigInteger;
        this.aq = bigInteger2;
        this.ar = bArr;
        if (ECAlgorithms.b(eCCurve)) {
            this.am = new X9FieldID(eCCurve.f().a());
        } else if (ECAlgorithms.a(eCCurve)) {
            int[] b = ((PolynomialExtensionField) eCCurve.f()).c().b();
            if (b.length == 3) {
                this.am = new X9FieldID(b[2], b[1]);
            } else if (b.length == 5) {
                this.am = new X9FieldID(b[4], b[1], b[2], b[3]);
            } else {
                throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
            }
        } else {
            throw new IllegalArgumentException("'curve' is of an unsupported type");
        }
    }

    public ECCurve a() {
        return this.an;
    }

    public ECPoint b() {
        return this.ao;
    }

    public BigInteger c() {
        return this.ap;
    }

    public BigInteger e() {
        if (this.aq == null) {
            return al;
        }
        return this.aq;
    }

    public byte[] h() {
        return this.ar;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(1));
        aSN1EncodableVector.a(this.am);
        aSN1EncodableVector.a(new X9Curve(this.an, this.ar));
        aSN1EncodableVector.a(new X9ECPoint(this.ao));
        aSN1EncodableVector.a(new ASN1Integer(this.ap));
        if (this.aq != null) {
            aSN1EncodableVector.a(new ASN1Integer(this.aq));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
