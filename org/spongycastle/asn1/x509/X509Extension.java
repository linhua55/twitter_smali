package org.spongycastle.asn1.x509;

import java.io.IOException;
import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class X509Extension {
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
    boolean F;
    ASN1OctetString G;

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

    public X509Extension(ASN1Boolean aSN1Boolean, ASN1OctetString aSN1OctetString) {
        this.F = aSN1Boolean.a();
        this.G = aSN1OctetString;
    }

    public X509Extension(boolean z, ASN1OctetString aSN1OctetString) {
        this.F = z;
        this.G = aSN1OctetString;
    }

    public boolean a() {
        return this.F;
    }

    public ASN1OctetString b() {
        return this.G;
    }

    public int hashCode() {
        if (a()) {
            return b().hashCode();
        }
        return b().hashCode() ^ -1;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof X509Extension)) {
            return false;
        }
        X509Extension x509Extension = (X509Extension) obj;
        if (x509Extension.b().equals(b()) && x509Extension.a() == a()) {
            return true;
        }
        return false;
    }

    public static ASN1Primitive a(X509Extension x509Extension) throws IllegalArgumentException {
        try {
            return ASN1Primitive.b(x509Extension.b().e());
        } catch (IOException e) {
            throw new IllegalArgumentException("can't convert extension: " + e);
        }
    }
}
