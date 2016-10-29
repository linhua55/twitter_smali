package org.spongycastle.asn1.x509;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.DERUniversalString;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;

/* compiled from: Twttr */
public class X509Name extends ASN1Object {
    public static final ASN1ObjectIdentifier A;
    public static final ASN1ObjectIdentifier B;
    public static final ASN1ObjectIdentifier C;
    public static final ASN1ObjectIdentifier D;
    public static final ASN1ObjectIdentifier E;
    public static final ASN1ObjectIdentifier F;
    public static final ASN1ObjectIdentifier G;
    public static final ASN1ObjectIdentifier H;
    public static final ASN1ObjectIdentifier I;
    public static boolean J;
    public static final Hashtable K;
    public static final Hashtable L;
    public static final Hashtable M;
    public static final Hashtable N;
    public static final Hashtable O;
    public static final Hashtable P;
    private static final Boolean Q;
    private static final Boolean R;
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
    private X509NameEntryConverter S;
    private Vector T;
    private Vector U;
    private Vector V;
    private ASN1Sequence W;
    private boolean X;
    private int Y;

    static {
        a = new ASN1ObjectIdentifier("2.5.4.6");
        b = new ASN1ObjectIdentifier("2.5.4.10");
        c = new ASN1ObjectIdentifier("2.5.4.11");
        d = new ASN1ObjectIdentifier("2.5.4.12");
        e = new ASN1ObjectIdentifier("2.5.4.3");
        f = new ASN1ObjectIdentifier("2.5.4.5");
        g = new ASN1ObjectIdentifier("2.5.4.9");
        h = f;
        i = new ASN1ObjectIdentifier("2.5.4.7");
        j = new ASN1ObjectIdentifier("2.5.4.8");
        k = new ASN1ObjectIdentifier("2.5.4.4");
        l = new ASN1ObjectIdentifier("2.5.4.42");
        m = new ASN1ObjectIdentifier("2.5.4.43");
        n = new ASN1ObjectIdentifier("2.5.4.44");
        o = new ASN1ObjectIdentifier("2.5.4.45");
        p = new ASN1ObjectIdentifier("2.5.4.15");
        q = new ASN1ObjectIdentifier("2.5.4.17");
        r = new ASN1ObjectIdentifier("2.5.4.46");
        s = new ASN1ObjectIdentifier("2.5.4.65");
        t = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.1");
        u = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.2");
        v = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.3");
        w = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.4");
        x = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.5");
        y = new ASN1ObjectIdentifier("1.3.36.8.3.14");
        z = new ASN1ObjectIdentifier("2.5.4.16");
        A = new ASN1ObjectIdentifier("2.5.4.54");
        B = X509ObjectIdentifiers.g;
        C = X509ObjectIdentifiers.i_;
        D = PKCSObjectIdentifiers.V;
        E = PKCSObjectIdentifiers.W;
        F = PKCSObjectIdentifiers.ac;
        G = D;
        H = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.25");
        I = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.1");
        J = false;
        K = new Hashtable();
        L = new Hashtable();
        M = new Hashtable();
        N = new Hashtable();
        O = K;
        P = N;
        Q = new Boolean(true);
        R = new Boolean(false);
        K.put(a, "C");
        K.put(b, "O");
        K.put(d, "T");
        K.put(c, "OU");
        K.put(e, "CN");
        K.put(i, "L");
        K.put(j, "ST");
        K.put(f, "SERIALNUMBER");
        K.put(D, "E");
        K.put(H, "DC");
        K.put(I, "UID");
        K.put(g, "STREET");
        K.put(k, "SURNAME");
        K.put(l, "GIVENNAME");
        K.put(m, "INITIALS");
        K.put(n, "GENERATION");
        K.put(F, "unstructuredAddress");
        K.put(E, "unstructuredName");
        K.put(o, "UniqueIdentifier");
        K.put(r, "DN");
        K.put(s, "Pseudonym");
        K.put(z, "PostalAddress");
        K.put(y, "NameAtBirth");
        K.put(w, "CountryOfCitizenship");
        K.put(x, "CountryOfResidence");
        K.put(v, "Gender");
        K.put(u, "PlaceOfBirth");
        K.put(t, "DateOfBirth");
        K.put(q, "PostalCode");
        K.put(p, "BusinessCategory");
        K.put(B, "TelephoneNumber");
        K.put(C, "Name");
        L.put(a, "C");
        L.put(b, "O");
        L.put(c, "OU");
        L.put(e, "CN");
        L.put(i, "L");
        L.put(j, "ST");
        L.put(g, "STREET");
        L.put(H, "DC");
        L.put(I, "UID");
        M.put(a, "C");
        M.put(b, "O");
        M.put(c, "OU");
        M.put(e, "CN");
        M.put(i, "L");
        M.put(j, "ST");
        M.put(g, "STREET");
        N.put("c", a);
        N.put("o", b);
        N.put("t", d);
        N.put("ou", c);
        N.put("cn", e);
        N.put("l", i);
        N.put("st", j);
        N.put("sn", f);
        N.put("serialnumber", f);
        N.put("street", g);
        N.put("emailaddress", G);
        N.put("dc", H);
        N.put("e", G);
        N.put("uid", I);
        N.put("surname", k);
        N.put("givenname", l);
        N.put("initials", m);
        N.put("generation", n);
        N.put("unstructuredaddress", F);
        N.put("unstructuredname", E);
        N.put("uniqueidentifier", o);
        N.put("dn", r);
        N.put("pseudonym", s);
        N.put("postaladdress", z);
        N.put("nameofbirth", y);
        N.put("countryofcitizenship", w);
        N.put("countryofresidence", x);
        N.put("gender", v);
        N.put("placeofbirth", u);
        N.put("dateofbirth", t);
        N.put("postalcode", q);
        N.put("businesscategory", p);
        N.put("telephonenumber", B);
        N.put("name", C);
    }

    public static X509Name a(Object obj) {
        if (obj == null || (obj instanceof X509Name)) {
            return (X509Name) obj;
        }
        if (obj instanceof X500Name) {
            return new X509Name(ASN1Sequence.a(((X500Name) obj).d()));
        }
        if (obj != null) {
            return new X509Name(ASN1Sequence.a(obj));
        }
        return null;
    }

    protected X509Name() {
        this.S = null;
        this.T = new Vector();
        this.U = new Vector();
        this.V = new Vector();
    }

    public X509Name(ASN1Sequence aSN1Sequence) {
        this.S = null;
        this.T = new Vector();
        this.U = new Vector();
        this.V = new Vector();
        this.W = aSN1Sequence;
        Enumeration e = aSN1Sequence.e();
        while (e.hasMoreElements()) {
            ASN1Set a = ASN1Set.a(((ASN1Encodable) e.nextElement()).d());
            for (int i = 0; i < a.e(); i++) {
                ASN1Sequence a2 = ASN1Sequence.a(a.a(i).d());
                if (a2.h() != 2) {
                    throw new IllegalArgumentException("badly sized pair");
                }
                Object obj;
                this.T.addElement(ASN1ObjectIdentifier.a(a2.a(0)));
                ASN1Encodable a3 = a2.a(1);
                if (!(a3 instanceof ASN1String) || (a3 instanceof DERUniversalString)) {
                    try {
                        this.U.addElement("#" + a(Hex.a(a3.d().a("DER"))));
                    } catch (IOException e2) {
                        throw new IllegalArgumentException("cannot encode value");
                    }
                }
                String a4 = ((ASN1String) a3).a();
                if (a4.length() <= 0 || a4.charAt(0) != '#') {
                    this.U.addElement(a4);
                } else {
                    this.U.addElement("\\" + a4);
                }
                Vector vector = this.V;
                if (i != 0) {
                    obj = Q;
                } else {
                    obj = R;
                }
                vector.addElement(obj);
            }
        }
    }

    public Vector a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        Vector vector = new Vector();
        for (int i = 0; i != this.U.size(); i++) {
            if (this.T.elementAt(i).equals(aSN1ObjectIdentifier)) {
                String str = (String) this.U.elementAt(i);
                if (str.length() > 2 && str.charAt(0) == '\\' && str.charAt(1) == '#') {
                    vector.addElement(str.substring(1));
                } else {
                    vector.addElement(str);
                }
            }
        }
        return vector;
    }

    public ASN1Primitive d() {
        if (this.W == null) {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            ASN1ObjectIdentifier aSN1ObjectIdentifier = null;
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            int i = 0;
            while (i != this.T.size()) {
                ASN1EncodableVector aSN1EncodableVector3;
                ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
                ASN1ObjectIdentifier aSN1ObjectIdentifier2 = (ASN1ObjectIdentifier) this.T.elementAt(i);
                aSN1EncodableVector4.a((ASN1Encodable) aSN1ObjectIdentifier2);
                aSN1EncodableVector4.a(this.S.a(aSN1ObjectIdentifier2, (String) this.U.elementAt(i)));
                if (aSN1ObjectIdentifier == null || ((Boolean) this.V.elementAt(i)).booleanValue()) {
                    aSN1EncodableVector2.a(new DERSequence(aSN1EncodableVector4));
                    aSN1EncodableVector3 = aSN1EncodableVector2;
                } else {
                    aSN1EncodableVector.a(new DERSet(aSN1EncodableVector2));
                    aSN1EncodableVector3 = new ASN1EncodableVector();
                    aSN1EncodableVector3.a(new DERSequence(aSN1EncodableVector4));
                }
                i++;
                aSN1EncodableVector2 = aSN1EncodableVector3;
                aSN1ObjectIdentifier = aSN1ObjectIdentifier2;
            }
            aSN1EncodableVector.a(new DERSet(aSN1EncodableVector2));
            this.W = new DERSequence(aSN1EncodableVector);
        }
        return this.W;
    }

    public int hashCode() {
        if (this.X) {
            return this.Y;
        }
        this.X = true;
        for (int i = 0; i != this.T.size(); i++) {
            String d = d(b((String) this.U.elementAt(i)));
            this.Y ^= this.T.elementAt(i).hashCode();
            this.Y = d.hashCode() ^ this.Y;
        }
        return this.Y;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X509Name) && !(obj instanceof ASN1Sequence)) {
            return false;
        }
        if (d().equals(((ASN1Encodable) obj).d())) {
            return true;
        }
        try {
            X509Name a = a(obj);
            int size = this.T.size();
            if (size != a.T.size()) {
                return false;
            }
            int i;
            int i2;
            int i3;
            boolean[] zArr = new boolean[size];
            if (this.T.elementAt(0).equals(a.T.elementAt(0))) {
                i = 1;
                i2 = size;
                i3 = 0;
            } else {
                i3 = size - 1;
                i = -1;
                i2 = -1;
            }
            for (int i4 = i3; i4 != i2; i4 += i) {
                boolean z;
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) this.T.elementAt(i4);
                String str = (String) this.U.elementAt(i4);
                int i5 = 0;
                while (i5 < size) {
                    if (!zArr[i5] && aSN1ObjectIdentifier.equals((ASN1ObjectIdentifier) a.T.elementAt(i5)) && a(str, (String) a.U.elementAt(i5))) {
                        zArr[i5] = true;
                        z = true;
                        break;
                    }
                    i5++;
                }
                z = false;
                if (!z) {
                    return false;
                }
            }
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    private boolean a(String str, String str2) {
        String b = b(str);
        String b2 = b(str2);
        if (b.equals(b2) || d(b).equals(d(b2))) {
            return true;
        }
        return false;
    }

    private String b(String str) {
        String c = Strings.c(str.trim());
        if (c.length() > 0 && c.charAt(0) == '#') {
            ASN1Primitive c2 = c(c);
            if (c2 instanceof ASN1String) {
                return Strings.c(((ASN1String) c2).a().trim());
            }
        }
        return c;
    }

    private ASN1Primitive c(String str) {
        try {
            return ASN1Primitive.b(Hex.a(str.substring(1)));
        } catch (IOException e) {
            throw new IllegalStateException("unknown encoding in name: " + e);
        }
    }

    private String d(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char charAt = str.charAt(0);
            stringBuffer.append(charAt);
            int i = 1;
            while (i < str.length()) {
                char charAt2 = str.charAt(i);
                if (charAt != ' ' || charAt2 != ' ') {
                    stringBuffer.append(charAt2);
                }
                i++;
                charAt = charAt2;
            }
        }
        return stringBuffer.toString();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.lang.StringBuffer r7, java.util.Hashtable r8, org.spongycastle.asn1.ASN1ObjectIdentifier r9, java.lang.String r10) {
        /*
        r6 = this;
        r5 = 92;
        r4 = 32;
        r0 = r8.get(r9);
        r0 = (java.lang.String) r0;
        if (r0 == 0) goto L_0x004b;
    L_0x000c:
        r7.append(r0);
    L_0x000f:
        r0 = 61;
        r7.append(r0);
        r1 = r7.length();
        r7.append(r10);
        r0 = r7.length();
        r2 = r10.length();
        r3 = 2;
        if (r2 < r3) goto L_0x0038;
    L_0x0026:
        r2 = 0;
        r2 = r10.charAt(r2);
        if (r2 != r5) goto L_0x0038;
    L_0x002d:
        r2 = 1;
        r2 = r10.charAt(r2);
        r3 = 35;
        if (r2 != r3) goto L_0x0038;
    L_0x0036:
        r1 = r1 + 2;
    L_0x0038:
        if (r1 >= r0) goto L_0x0053;
    L_0x003a:
        r2 = r7.charAt(r1);
        if (r2 != r4) goto L_0x0053;
    L_0x0040:
        r2 = "\\";
        r7.insert(r1, r2);
        r1 = r1 + 2;
        r0 = r0 + 1;
        goto L_0x0038;
    L_0x004b:
        r0 = r9.a();
        r7.append(r0);
        goto L_0x000f;
    L_0x0053:
        r0 = r0 + -1;
        if (r0 <= r1) goto L_0x006b;
    L_0x0057:
        r2 = r7.charAt(r0);
        if (r2 != r4) goto L_0x006b;
    L_0x005d:
        r7.insert(r0, r5);
        goto L_0x0053;
    L_0x0061:
        r2 = "\\";
        r7.insert(r1, r2);
        r1 = r1 + 2;
        r0 = r0 + 1;
    L_0x006b:
        if (r1 > r0) goto L_0x0077;
    L_0x006d:
        r2 = r7.charAt(r1);
        switch(r2) {
            case 34: goto L_0x0061;
            case 43: goto L_0x0061;
            case 44: goto L_0x0061;
            case 59: goto L_0x0061;
            case 60: goto L_0x0061;
            case 61: goto L_0x0061;
            case 62: goto L_0x0061;
            case 92: goto L_0x0061;
            default: goto L_0x0074;
        };
    L_0x0074:
        r1 = r1 + 1;
        goto L_0x006b;
    L_0x0077:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.x509.X509Name.a(java.lang.StringBuffer, java.util.Hashtable, org.spongycastle.asn1.ASN1ObjectIdentifier, java.lang.String):void");
    }

    public String a(boolean z, Hashtable hashtable) {
        StringBuffer stringBuffer = new StringBuffer();
        Vector vector = new Vector();
        StringBuffer stringBuffer2 = null;
        int i = 0;
        while (i < this.T.size()) {
            StringBuffer stringBuffer3;
            if (((Boolean) this.V.elementAt(i)).booleanValue()) {
                stringBuffer2.append('+');
                a(stringBuffer2, hashtable, (ASN1ObjectIdentifier) this.T.elementAt(i), (String) this.U.elementAt(i));
                stringBuffer3 = stringBuffer2;
            } else {
                stringBuffer2 = new StringBuffer();
                a(stringBuffer2, hashtable, (ASN1ObjectIdentifier) this.T.elementAt(i), (String) this.U.elementAt(i));
                vector.addElement(stringBuffer2);
                stringBuffer3 = stringBuffer2;
            }
            i++;
            stringBuffer2 = stringBuffer3;
        }
        if (z) {
            Object obj = 1;
            for (int size = vector.size() - 1; size >= 0; size--) {
                if (obj != null) {
                    obj = null;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(size).toString());
            }
        } else {
            Object obj2 = 1;
            for (int i2 = 0; i2 < vector.size(); i2++) {
                if (obj2 != null) {
                    obj2 = null;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(i2).toString());
            }
        }
        return stringBuffer.toString();
    }

    private String a(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int i = 0; i != cArr.length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return new String(cArr);
    }

    public String toString() {
        return a(J, K);
    }
}
