package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class RSASSAPSSparams extends ASN1Object {
    public static final AlgorithmIdentifier a;
    public static final AlgorithmIdentifier b;
    public static final ASN1Integer c;
    public static final ASN1Integer d;
    private AlgorithmIdentifier e;
    private AlgorithmIdentifier f;
    private ASN1Integer g;
    private ASN1Integer h;

    static {
        a = new AlgorithmIdentifier(OIWObjectIdentifiers.i, DERNull.a);
        b = new AlgorithmIdentifier(PKCSObjectIdentifiers.r_, a);
        c = new ASN1Integer(20);
        d = new ASN1Integer(1);
    }

    public static RSASSAPSSparams a(Object obj) {
        if (obj instanceof RSASSAPSSparams) {
            return (RSASSAPSSparams) obj;
        }
        if (obj != null) {
            return new RSASSAPSSparams(ASN1Sequence.a(obj));
        }
        return null;
    }

    public RSASSAPSSparams() {
        this.e = a;
        this.f = b;
        this.g = c;
        this.h = d;
    }

    public RSASSAPSSparams(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2, ASN1Integer aSN1Integer, ASN1Integer aSN1Integer2) {
        this.e = algorithmIdentifier;
        this.f = algorithmIdentifier2;
        this.g = aSN1Integer;
        this.h = aSN1Integer2;
    }

    private RSASSAPSSparams(ASN1Sequence aSN1Sequence) {
        this.e = a;
        this.f = b;
        this.g = c;
        this.h = d;
        for (int i = 0; i != aSN1Sequence.h(); i++) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Sequence.a(i);
            switch (aSN1TaggedObject.a()) {
                case p.View_android_theme /*0*/:
                    this.e = AlgorithmIdentifier.a(aSN1TaggedObject, true);
                    break;
                case p.View_android_focusable /*1*/:
                    this.f = AlgorithmIdentifier.a(aSN1TaggedObject, true);
                    break;
                case p.View_paddingStart /*2*/:
                    this.g = ASN1Integer.a(aSN1TaggedObject, true);
                    break;
                case p.View_paddingEnd /*3*/:
                    this.h = ASN1Integer.a(aSN1TaggedObject, true);
                    break;
                default:
                    throw new IllegalArgumentException("unknown tag");
            }
        }
    }

    public AlgorithmIdentifier a() {
        return this.e;
    }

    public AlgorithmIdentifier b() {
        return this.f;
    }

    public BigInteger c() {
        return this.g.a();
    }

    public BigInteger e() {
        return this.h.a();
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (!this.e.equals(a)) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 0, this.e));
        }
        if (!this.f.equals(b)) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 1, this.f));
        }
        if (!this.g.equals(c)) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 2, this.g));
        }
        if (!this.h.equals(d)) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 3, this.h));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
