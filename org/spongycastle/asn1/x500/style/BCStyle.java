package org.spongycastle.asn1.x500.style;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;

/* compiled from: Twttr */
public class BCStyle extends AbstractX500NameStyle {
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
    public static final X500NameStyle K;
    private static final Hashtable N;
    private static final Hashtable a;
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
    protected final Hashtable L;
    protected final Hashtable M;

    static {
        b = new ASN1ObjectIdentifier("2.5.4.6");
        c = new ASN1ObjectIdentifier("2.5.4.10");
        d = new ASN1ObjectIdentifier("2.5.4.11");
        e = new ASN1ObjectIdentifier("2.5.4.12");
        f = new ASN1ObjectIdentifier("2.5.4.3");
        g = new ASN1ObjectIdentifier("2.5.4.5");
        h = new ASN1ObjectIdentifier("2.5.4.9");
        i = g;
        j = new ASN1ObjectIdentifier("2.5.4.7");
        k = new ASN1ObjectIdentifier("2.5.4.8");
        l = new ASN1ObjectIdentifier("2.5.4.4");
        m = new ASN1ObjectIdentifier("2.5.4.42");
        n = new ASN1ObjectIdentifier("2.5.4.43");
        o = new ASN1ObjectIdentifier("2.5.4.44");
        p = new ASN1ObjectIdentifier("2.5.4.45");
        q = new ASN1ObjectIdentifier("2.5.4.15");
        r = new ASN1ObjectIdentifier("2.5.4.17");
        s = new ASN1ObjectIdentifier("2.5.4.46");
        t = new ASN1ObjectIdentifier("2.5.4.65");
        u = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.1");
        v = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.2");
        w = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.3");
        x = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.4");
        y = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.5");
        z = new ASN1ObjectIdentifier("1.3.36.8.3.14");
        A = new ASN1ObjectIdentifier("2.5.4.16");
        B = new ASN1ObjectIdentifier("2.5.4.54");
        C = X509ObjectIdentifiers.g;
        D = X509ObjectIdentifiers.i_;
        E = PKCSObjectIdentifiers.V;
        F = PKCSObjectIdentifiers.W;
        G = PKCSObjectIdentifiers.ac;
        H = E;
        I = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.25");
        J = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.1");
        a = new Hashtable();
        N = new Hashtable();
        a.put(b, "C");
        a.put(c, "O");
        a.put(e, "T");
        a.put(d, "OU");
        a.put(f, "CN");
        a.put(j, "L");
        a.put(k, "ST");
        a.put(g, "SERIALNUMBER");
        a.put(E, "E");
        a.put(I, "DC");
        a.put(J, "UID");
        a.put(h, "STREET");
        a.put(l, "SURNAME");
        a.put(m, "GIVENNAME");
        a.put(n, "INITIALS");
        a.put(o, "GENERATION");
        a.put(G, "unstructuredAddress");
        a.put(F, "unstructuredName");
        a.put(p, "UniqueIdentifier");
        a.put(s, "DN");
        a.put(t, "Pseudonym");
        a.put(A, "PostalAddress");
        a.put(z, "NameAtBirth");
        a.put(x, "CountryOfCitizenship");
        a.put(y, "CountryOfResidence");
        a.put(w, "Gender");
        a.put(v, "PlaceOfBirth");
        a.put(u, "DateOfBirth");
        a.put(r, "PostalCode");
        a.put(q, "BusinessCategory");
        a.put(C, "TelephoneNumber");
        a.put(D, "Name");
        N.put("c", b);
        N.put("o", c);
        N.put("t", e);
        N.put("ou", d);
        N.put("cn", f);
        N.put("l", j);
        N.put("st", k);
        N.put("sn", g);
        N.put("serialnumber", g);
        N.put("street", h);
        N.put("emailaddress", H);
        N.put("dc", I);
        N.put("e", H);
        N.put("uid", J);
        N.put("surname", l);
        N.put("givenname", m);
        N.put("initials", n);
        N.put("generation", o);
        N.put("unstructuredaddress", G);
        N.put("unstructuredname", F);
        N.put("uniqueidentifier", p);
        N.put("dn", s);
        N.put("pseudonym", t);
        N.put("postaladdress", A);
        N.put("nameofbirth", z);
        N.put("countryofcitizenship", x);
        N.put("countryofresidence", y);
        N.put("gender", w);
        N.put("placeofbirth", v);
        N.put("dateofbirth", u);
        N.put("postalcode", r);
        N.put("businesscategory", q);
        N.put("telephonenumber", C);
        N.put("name", D);
        K = new BCStyle();
    }

    protected BCStyle() {
        this.M = AbstractX500NameStyle.a(a);
        this.L = AbstractX500NameStyle.a(N);
    }

    protected ASN1Encodable b(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        if (aSN1ObjectIdentifier.equals(E) || aSN1ObjectIdentifier.equals(I)) {
            return new DERIA5String(str);
        }
        if (aSN1ObjectIdentifier.equals(u)) {
            return new ASN1GeneralizedTime(str);
        }
        if (aSN1ObjectIdentifier.equals(b) || aSN1ObjectIdentifier.equals(g) || aSN1ObjectIdentifier.equals(s) || aSN1ObjectIdentifier.equals(C)) {
            return new DERPrintableString(str);
        }
        return super.b(aSN1ObjectIdentifier, str);
    }

    public ASN1ObjectIdentifier a(String str) {
        return IETFUtils.a(str, this.L);
    }

    public RDN[] b(String str) {
        return IETFUtils.a(str, (X500NameStyle) this);
    }

    public String b(X500Name x500Name) {
        StringBuffer stringBuffer = new StringBuffer();
        RDN[] a = x500Name.a();
        Object obj = 1;
        for (RDN a2 : a) {
            if (obj != null) {
                obj = null;
            } else {
                stringBuffer.append(',');
            }
            IETFUtils.a(stringBuffer, a2, this.M);
        }
        return stringBuffer.toString();
    }
}
