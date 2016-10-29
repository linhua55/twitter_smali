package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class X509Extensions extends ASN1Object {
    public static final ASN1ObjectIdentifier A;
    public static final ASN1ObjectIdentifier B;
    public static final ASN1ObjectIdentifier C;
    public static final ASN1ObjectIdentifier D;
    public static final ASN1ObjectIdentifier E;
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier d;
    public static final ASN1ObjectIdentifier e;
    public static final ASN1ObjectIdentifier f;
    public static final ASN1ObjectIdentifier g;
    public static final ASN1ObjectIdentifier h;
    public static final ASN1ObjectIdentifier i;
    public static final ASN1ObjectIdentifier j;
    public static final ASN1ObjectIdentifier k;
    public static final ASN1ObjectIdentifier l;
    public static final ASN1ObjectIdentifier m;
    public static final ASN1ObjectIdentifier n;
    public static final ASN1ObjectIdentifier o;
    public static final ASN1ObjectIdentifier p;
    public static final ASN1ObjectIdentifier q;
    public static final ASN1ObjectIdentifier r;
    public static final ASN1ObjectIdentifier s;
    public static final ASN1ObjectIdentifier t;
    public static final ASN1ObjectIdentifier u;
    public static final ASN1ObjectIdentifier v;
    public static final ASN1ObjectIdentifier w;
    public static final ASN1ObjectIdentifier x;
    public static final ASN1ObjectIdentifier y;
    public static final ASN1ObjectIdentifier z;
    private Hashtable F;
    private Vector G;

    static {
        a = new ASN1ObjectIdentifier("2.5.29.9");
        b = new ASN1ObjectIdentifier("2.5.29.14");
        c = new ASN1ObjectIdentifier("2.5.29.15");
        d = new ASN1ObjectIdentifier("2.5.29.16");
        e = new ASN1ObjectIdentifier("2.5.29.17");
        f = new ASN1ObjectIdentifier("2.5.29.18");
        g = new ASN1ObjectIdentifier("2.5.29.19");
        h = new ASN1ObjectIdentifier("2.5.29.20");
        i = new ASN1ObjectIdentifier("2.5.29.21");
        j = new ASN1ObjectIdentifier("2.5.29.23");
        k = new ASN1ObjectIdentifier("2.5.29.24");
        l = new ASN1ObjectIdentifier("2.5.29.27");
        m = new ASN1ObjectIdentifier("2.5.29.28");
        n = new ASN1ObjectIdentifier("2.5.29.29");
        o = new ASN1ObjectIdentifier("2.5.29.30");
        p = new ASN1ObjectIdentifier("2.5.29.31");
        q = new ASN1ObjectIdentifier("2.5.29.32");
        r = new ASN1ObjectIdentifier("2.5.29.33");
        s = new ASN1ObjectIdentifier("2.5.29.35");
        t = new ASN1ObjectIdentifier("2.5.29.36");
        u = new ASN1ObjectIdentifier("2.5.29.37");
        v = new ASN1ObjectIdentifier("2.5.29.46");
        w = new ASN1ObjectIdentifier("2.5.29.54");
        x = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.1");
        y = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.11");
        z = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.12");
        A = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.2");
        B = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.3");
        C = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.4");
        D = new ASN1ObjectIdentifier("2.5.29.56");
        E = new ASN1ObjectIdentifier("2.5.29.55");
    }

    public static X509Extensions a(Object obj) {
        if (obj == null || (obj instanceof X509Extensions)) {
            return (X509Extensions) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new X509Extensions((ASN1Sequence) obj);
        }
        if (obj instanceof Extensions) {
            return new X509Extensions((ASN1Sequence) ((Extensions) obj).d());
        }
        if (obj instanceof ASN1TaggedObject) {
            return a(((ASN1TaggedObject) obj).l());
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public X509Extensions(ASN1Sequence aSN1Sequence) {
        this.F = new Hashtable();
        this.G = new Vector();
        Enumeration e = aSN1Sequence.e();
        while (e.hasMoreElements()) {
            ASN1Sequence a = ASN1Sequence.a(e.nextElement());
            if (a.h() == 3) {
                this.F.put(a.a(0), new X509Extension(ASN1Boolean.a(a.a(1)), ASN1OctetString.a(a.a(2))));
            } else if (a.h() == 2) {
                this.F.put(a.a(0), new X509Extension(false, ASN1OctetString.a(a.a(1))));
            } else {
                throw new IllegalArgumentException("Bad sequence size: " + a.h());
            }
            this.G.addElement(a.a(0));
        }
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        Enumeration elements = this.G.elements();
        while (elements.hasMoreElements()) {
            ASN1Encodable aSN1Encodable = (ASN1ObjectIdentifier) elements.nextElement();
            X509Extension x509Extension = (X509Extension) this.F.get(aSN1Encodable);
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            aSN1EncodableVector2.a(aSN1Encodable);
            if (x509Extension.a()) {
                aSN1EncodableVector2.a(ASN1Boolean.b);
            }
            aSN1EncodableVector2.a(x509Extension.b());
            aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector2));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
