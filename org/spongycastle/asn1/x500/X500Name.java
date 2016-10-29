package org.spongycastle.asn1.x500;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x500.style.BCStyle;

/* compiled from: Twttr */
public class X500Name extends ASN1Object implements ASN1Choice {
    private static X500NameStyle a;
    private boolean b;
    private int c;
    private X500NameStyle d;
    private RDN[] e;

    static {
        a = BCStyle.K;
    }

    public static X500Name a(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return a(ASN1Sequence.a(aSN1TaggedObject, true));
    }

    public static X500Name a(Object obj) {
        if (obj instanceof X500Name) {
            return (X500Name) obj;
        }
        if (obj != null) {
            return new X500Name(ASN1Sequence.a(obj));
        }
        return null;
    }

    public static X500Name a(X500NameStyle x500NameStyle, Object obj) {
        if (obj instanceof X500Name) {
            return a(x500NameStyle, ((X500Name) obj).d());
        }
        if (obj != null) {
            return new X500Name(x500NameStyle, ASN1Sequence.a(obj));
        }
        return null;
    }

    private X500Name(ASN1Sequence aSN1Sequence) {
        this(a, aSN1Sequence);
    }

    private X500Name(X500NameStyle x500NameStyle, ASN1Sequence aSN1Sequence) {
        this.d = x500NameStyle;
        this.e = new RDN[aSN1Sequence.h()];
        int i = 0;
        Enumeration e = aSN1Sequence.e();
        while (e.hasMoreElements()) {
            int i2 = i + 1;
            this.e[i] = RDN.a(e.nextElement());
            i = i2;
        }
    }

    public X500Name(RDN[] rdnArr) {
        this(a, rdnArr);
    }

    public X500Name(X500NameStyle x500NameStyle, RDN[] rdnArr) {
        this.e = rdnArr;
        this.d = x500NameStyle;
    }

    public X500Name(String str) {
        this(a, str);
    }

    public X500Name(X500NameStyle x500NameStyle, String str) {
        this(x500NameStyle.b(str));
        this.d = x500NameStyle;
    }

    public RDN[] a() {
        Object obj = new RDN[this.e.length];
        System.arraycopy(this.e, 0, obj, 0, obj.length);
        return obj;
    }

    public ASN1Primitive d() {
        return new DERSequence(this.e);
    }

    public int hashCode() {
        if (this.b) {
            return this.c;
        }
        this.b = true;
        this.c = this.d.a(this);
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X500Name) && !(obj instanceof ASN1Sequence)) {
            return false;
        }
        if (d().equals(((ASN1Encodable) obj).d())) {
            return true;
        }
        try {
            return this.d.a(this, new X500Name(ASN1Sequence.a(((ASN1Encodable) obj).d())));
        } catch (Exception e) {
            return false;
        }
    }

    public String toString() {
        return this.d.b(this);
    }
}
