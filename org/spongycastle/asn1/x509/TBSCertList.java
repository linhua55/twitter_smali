package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.ASN1UTCTime;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x500.X500Name;

/* compiled from: Twttr */
public class TBSCertList extends ASN1Object {
    ASN1Integer a;
    AlgorithmIdentifier b;
    X500Name c;
    Time d;
    Time e;
    ASN1Sequence f;
    Extensions g;

    /* compiled from: Twttr */
    public class CRLEntry extends ASN1Object {
        ASN1Sequence a;
        Extensions b;

        private CRLEntry(ASN1Sequence aSN1Sequence) {
            if (aSN1Sequence.h() < 2 || aSN1Sequence.h() > 3) {
                throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
            }
            this.a = aSN1Sequence;
        }

        public static CRLEntry a(Object obj) {
            if (obj instanceof CRLEntry) {
                return (CRLEntry) obj;
            }
            if (obj != null) {
                return new CRLEntry(ASN1Sequence.a(obj));
            }
            return null;
        }

        public ASN1Integer a() {
            return ASN1Integer.a(this.a.a(0));
        }

        public Time b() {
            return Time.a(this.a.a(1));
        }

        public Extensions c() {
            if (this.b == null && this.a.h() == 3) {
                this.b = Extensions.a(this.a.a(2));
            }
            return this.b;
        }

        public ASN1Primitive d() {
            return this.a;
        }

        public boolean e() {
            return this.a.h() == 3;
        }
    }

    /* compiled from: Twttr */
    class EmptyEnumeration implements Enumeration {
        final /* synthetic */ TBSCertList a;

        private EmptyEnumeration(TBSCertList tBSCertList) {
            this.a = tBSCertList;
        }

        public boolean hasMoreElements() {
            return false;
        }

        public Object nextElement() {
            return null;
        }
    }

    /* compiled from: Twttr */
    class RevokedCertificatesEnumeration implements Enumeration {
        final /* synthetic */ TBSCertList a;
        private final Enumeration b;

        RevokedCertificatesEnumeration(TBSCertList tBSCertList, Enumeration enumeration) {
            this.a = tBSCertList;
            this.b = enumeration;
        }

        public boolean hasMoreElements() {
            return this.b.hasMoreElements();
        }

        public Object nextElement() {
            return CRLEntry.a(this.b.nextElement());
        }
    }

    public static TBSCertList a(Object obj) {
        if (obj instanceof TBSCertList) {
            return (TBSCertList) obj;
        }
        if (obj != null) {
            return new TBSCertList(ASN1Sequence.a(obj));
        }
        return null;
    }

    public TBSCertList(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() < 3 || aSN1Sequence.h() > 7) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
        }
        int i = 0;
        if (aSN1Sequence.a(0) instanceof ASN1Integer) {
            this.a = ASN1Integer.a(aSN1Sequence.a(0));
            i = 1;
        } else {
            this.a = null;
        }
        int i2 = i + 1;
        this.b = AlgorithmIdentifier.a(aSN1Sequence.a(i));
        int i3 = i2 + 1;
        this.c = X500Name.a(aSN1Sequence.a(i2));
        i = i3 + 1;
        this.d = Time.a(aSN1Sequence.a(i3));
        if (i < aSN1Sequence.h() && ((aSN1Sequence.a(i) instanceof ASN1UTCTime) || (aSN1Sequence.a(i) instanceof ASN1GeneralizedTime) || (aSN1Sequence.a(i) instanceof Time))) {
            i2 = i + 1;
            this.e = Time.a(aSN1Sequence.a(i));
            i = i2;
        }
        if (i < aSN1Sequence.h() && !(aSN1Sequence.a(i) instanceof DERTaggedObject)) {
            i2 = i + 1;
            this.f = ASN1Sequence.a(aSN1Sequence.a(i));
            i = i2;
        }
        if (i < aSN1Sequence.h() && (aSN1Sequence.a(i) instanceof DERTaggedObject)) {
            this.g = Extensions.a(ASN1Sequence.a((ASN1TaggedObject) aSN1Sequence.a(i), true));
        }
    }

    public int a() {
        if (this.a == null) {
            return 1;
        }
        return this.a.a().intValue() + 1;
    }

    public AlgorithmIdentifier b() {
        return this.b;
    }

    public X500Name c() {
        return this.c;
    }

    public Time e() {
        return this.d;
    }

    public Time h() {
        return this.e;
    }

    public Enumeration i() {
        if (this.f == null) {
            return new EmptyEnumeration();
        }
        return new RevokedCertificatesEnumeration(this, this.f.e());
    }

    public Extensions j() {
        return this.g;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.a != null) {
            aSN1EncodableVector.a(this.a);
        }
        aSN1EncodableVector.a(this.b);
        aSN1EncodableVector.a(this.c);
        aSN1EncodableVector.a(this.d);
        if (this.e != null) {
            aSN1EncodableVector.a(this.e);
        }
        if (this.f != null) {
            aSN1EncodableVector.a(this.f);
        }
        if (this.g != null) {
            aSN1EncodableVector.a(new DERTaggedObject(0, this.g));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
