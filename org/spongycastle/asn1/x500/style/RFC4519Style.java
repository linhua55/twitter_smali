package org.spongycastle.asn1.x500.style;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;

/* compiled from: Twttr */
public class RFC4519Style extends AbstractX500NameStyle {
    public static final ASN1ObjectIdentifier A;
    public static final ASN1ObjectIdentifier B;
    public static final ASN1ObjectIdentifier C;
    public static final ASN1ObjectIdentifier D;
    public static final ASN1ObjectIdentifier E;
    public static final ASN1ObjectIdentifier F;
    public static final ASN1ObjectIdentifier G;
    public static final ASN1ObjectIdentifier H;
    public static final ASN1ObjectIdentifier I;
    public static final ASN1ObjectIdentifier J;
    public static final ASN1ObjectIdentifier K;
    public static final ASN1ObjectIdentifier L;
    public static final ASN1ObjectIdentifier M;
    public static final ASN1ObjectIdentifier N;
    public static final ASN1ObjectIdentifier O;
    public static final ASN1ObjectIdentifier P;
    public static final ASN1ObjectIdentifier Q;
    public static final X500NameStyle R;
    private static final Hashtable U;
    private static final Hashtable V;
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
    protected final Hashtable S;
    protected final Hashtable T;

    static {
        a = new ASN1ObjectIdentifier("2.5.4.15");
        b = new ASN1ObjectIdentifier("2.5.4.6");
        c = new ASN1ObjectIdentifier("2.5.4.3");
        d = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.25");
        e = new ASN1ObjectIdentifier("2.5.4.13");
        f = new ASN1ObjectIdentifier("2.5.4.27");
        g = new ASN1ObjectIdentifier("2.5.4.49");
        h = new ASN1ObjectIdentifier("2.5.4.46");
        i = new ASN1ObjectIdentifier("2.5.4.47");
        j = new ASN1ObjectIdentifier("2.5.4.23");
        k = new ASN1ObjectIdentifier("2.5.4.44");
        l = new ASN1ObjectIdentifier("2.5.4.42");
        m = new ASN1ObjectIdentifier("2.5.4.51");
        n = new ASN1ObjectIdentifier("2.5.4.43");
        o = new ASN1ObjectIdentifier("2.5.4.25");
        p = new ASN1ObjectIdentifier("2.5.4.7");
        q = new ASN1ObjectIdentifier("2.5.4.31");
        r = new ASN1ObjectIdentifier("2.5.4.41");
        s = new ASN1ObjectIdentifier("2.5.4.10");
        t = new ASN1ObjectIdentifier("2.5.4.11");
        u = new ASN1ObjectIdentifier("2.5.4.32");
        v = new ASN1ObjectIdentifier("2.5.4.19");
        w = new ASN1ObjectIdentifier("2.5.4.16");
        x = new ASN1ObjectIdentifier("2.5.4.17");
        y = new ASN1ObjectIdentifier("2.5.4.18");
        z = new ASN1ObjectIdentifier("2.5.4.28");
        A = new ASN1ObjectIdentifier("2.5.4.26");
        B = new ASN1ObjectIdentifier("2.5.4.33");
        C = new ASN1ObjectIdentifier("2.5.4.14");
        D = new ASN1ObjectIdentifier("2.5.4.34");
        E = new ASN1ObjectIdentifier("2.5.4.5");
        F = new ASN1ObjectIdentifier("2.5.4.4");
        G = new ASN1ObjectIdentifier("2.5.4.8");
        H = new ASN1ObjectIdentifier("2.5.4.9");
        I = new ASN1ObjectIdentifier("2.5.4.20");
        J = new ASN1ObjectIdentifier("2.5.4.22");
        K = new ASN1ObjectIdentifier("2.5.4.21");
        L = new ASN1ObjectIdentifier("2.5.4.12");
        M = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.1");
        N = new ASN1ObjectIdentifier("2.5.4.50");
        O = new ASN1ObjectIdentifier("2.5.4.35");
        P = new ASN1ObjectIdentifier("2.5.4.24");
        Q = new ASN1ObjectIdentifier("2.5.4.45");
        U = new Hashtable();
        V = new Hashtable();
        U.put(a, "businessCategory");
        U.put(b, "c");
        U.put(c, "cn");
        U.put(d, "dc");
        U.put(e, "description");
        U.put(f, "destinationIndicator");
        U.put(g, "distinguishedName");
        U.put(h, "dnQualifier");
        U.put(i, "enhancedSearchGuide");
        U.put(j, "facsimileTelephoneNumber");
        U.put(k, "generationQualifier");
        U.put(l, "givenName");
        U.put(m, "houseIdentifier");
        U.put(n, "initials");
        U.put(o, "internationalISDNNumber");
        U.put(p, "l");
        U.put(q, "member");
        U.put(r, "name");
        U.put(s, "o");
        U.put(t, "ou");
        U.put(u, "owner");
        U.put(v, "physicalDeliveryOfficeName");
        U.put(w, "postalAddress");
        U.put(x, "postalCode");
        U.put(y, "postOfficeBox");
        U.put(z, "preferredDeliveryMethod");
        U.put(A, "registeredAddress");
        U.put(B, "roleOccupant");
        U.put(C, "searchGuide");
        U.put(D, "seeAlso");
        U.put(E, "serialNumber");
        U.put(F, "sn");
        U.put(G, "st");
        U.put(H, "street");
        U.put(I, "telephoneNumber");
        U.put(J, "teletexTerminalIdentifier");
        U.put(K, "telexNumber");
        U.put(L, "title");
        U.put(M, "uid");
        U.put(N, "uniqueMember");
        U.put(O, "userPassword");
        U.put(P, "x121Address");
        U.put(Q, "x500UniqueIdentifier");
        V.put("businesscategory", a);
        V.put("c", b);
        V.put("cn", c);
        V.put("dc", d);
        V.put("description", e);
        V.put("destinationindicator", f);
        V.put("distinguishedname", g);
        V.put("dnqualifier", h);
        V.put("enhancedsearchguide", i);
        V.put("facsimiletelephonenumber", j);
        V.put("generationqualifier", k);
        V.put("givenname", l);
        V.put("houseidentifier", m);
        V.put("initials", n);
        V.put("internationalisdnnumber", o);
        V.put("l", p);
        V.put("member", q);
        V.put("name", r);
        V.put("o", s);
        V.put("ou", t);
        V.put("owner", u);
        V.put("physicaldeliveryofficename", v);
        V.put("postaladdress", w);
        V.put("postalcode", x);
        V.put("postofficebox", y);
        V.put("preferreddeliverymethod", z);
        V.put("registeredaddress", A);
        V.put("roleoccupant", B);
        V.put("searchguide", C);
        V.put("seealso", D);
        V.put("serialnumber", E);
        V.put("sn", F);
        V.put("st", G);
        V.put("street", H);
        V.put("telephonenumber", I);
        V.put("teletexterminalidentifier", J);
        V.put("telexnumber", K);
        V.put("title", L);
        V.put("uid", M);
        V.put("uniquemember", N);
        V.put("userpassword", O);
        V.put("x121address", P);
        V.put("x500uniqueidentifier", Q);
        R = new RFC4519Style();
    }

    protected RFC4519Style() {
        this.T = AbstractX500NameStyle.a(U);
        this.S = AbstractX500NameStyle.a(V);
    }

    protected ASN1Encodable b(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        if (aSN1ObjectIdentifier.equals(d)) {
            return new DERIA5String(str);
        }
        if (aSN1ObjectIdentifier.equals(b) || aSN1ObjectIdentifier.equals(E) || aSN1ObjectIdentifier.equals(h) || aSN1ObjectIdentifier.equals(I)) {
            return new DERPrintableString(str);
        }
        return super.b(aSN1ObjectIdentifier, str);
    }

    public ASN1ObjectIdentifier a(String str) {
        return IETFUtils.a(str, this.S);
    }

    public RDN[] b(String str) {
        RDN[] a = IETFUtils.a(str, (X500NameStyle) this);
        RDN[] rdnArr = new RDN[a.length];
        for (int i = 0; i != a.length; i++) {
            rdnArr[(rdnArr.length - i) - 1] = a[i];
        }
        return rdnArr;
    }

    public String b(X500Name x500Name) {
        StringBuffer stringBuffer = new StringBuffer();
        RDN[] a = x500Name.a();
        Object obj = 1;
        for (int length = a.length - 1; length >= 0; length--) {
            if (obj != null) {
                obj = null;
            } else {
                stringBuffer.append(',');
            }
            IETFUtils.a(stringBuffer, a[length], this.T);
        }
        return stringBuffer.toString();
    }
}
