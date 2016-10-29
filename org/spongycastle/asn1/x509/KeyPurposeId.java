package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class KeyPurposeId extends ASN1Object {
    public static final KeyPurposeId a;
    public static final KeyPurposeId b;
    public static final KeyPurposeId c;
    public static final KeyPurposeId d;
    public static final KeyPurposeId e;
    public static final KeyPurposeId f;
    public static final KeyPurposeId g;
    public static final KeyPurposeId h;
    public static final KeyPurposeId i;
    public static final KeyPurposeId j;
    public static final KeyPurposeId k;
    public static final KeyPurposeId l;
    public static final KeyPurposeId m;
    public static final KeyPurposeId n;
    public static final KeyPurposeId o;
    public static final KeyPurposeId p;
    public static final KeyPurposeId q;
    public static final KeyPurposeId r;
    public static final KeyPurposeId s;
    public static final KeyPurposeId t;
    public static final KeyPurposeId u;
    private static final ASN1ObjectIdentifier v;
    private ASN1ObjectIdentifier w;

    static {
        v = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.3");
        a = new KeyPurposeId(Extension.u.b("0"));
        b = new KeyPurposeId(v.b("1"));
        c = new KeyPurposeId(v.b("2"));
        d = new KeyPurposeId(v.b("3"));
        e = new KeyPurposeId(v.b("4"));
        f = new KeyPurposeId(v.b("5"));
        g = new KeyPurposeId(v.b("6"));
        h = new KeyPurposeId(v.b("7"));
        i = new KeyPurposeId(v.b("8"));
        j = new KeyPurposeId(v.b("9"));
        k = new KeyPurposeId(v.b("10"));
        l = new KeyPurposeId(v.b("11"));
        m = new KeyPurposeId(v.b("12"));
        n = new KeyPurposeId(v.b("13"));
        o = new KeyPurposeId(v.b("14"));
        p = new KeyPurposeId(v.b("15"));
        q = new KeyPurposeId(v.b("16"));
        r = new KeyPurposeId(v.b("17"));
        s = new KeyPurposeId(v.b("18"));
        t = new KeyPurposeId(v.b("19"));
        u = new KeyPurposeId(new ASN1ObjectIdentifier("1.3.6.1.4.1.311.20.2.2"));
    }

    private KeyPurposeId(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.w = aSN1ObjectIdentifier;
    }

    public ASN1Primitive d() {
        return this.w;
    }
}
