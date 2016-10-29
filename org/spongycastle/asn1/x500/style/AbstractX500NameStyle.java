package org.spongycastle.asn1.x500.style;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERUTF8String;
import org.spongycastle.asn1.x500.AttributeTypeAndValue;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;

/* compiled from: Twttr */
public abstract class AbstractX500NameStyle implements X500NameStyle {
    public static Hashtable a(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            hashtable2.put(nextElement, hashtable.get(nextElement));
        }
        return hashtable2;
    }

    private int a(ASN1Encodable aSN1Encodable) {
        return IETFUtils.a(IETFUtils.a(aSN1Encodable)).hashCode();
    }

    public int a(X500Name x500Name) {
        RDN[] a = x500Name.a();
        int i = 0;
        for (int i2 = 0; i2 != a.length; i2++) {
            if (a[i2].a()) {
                AttributeTypeAndValue[] c = a[i2].c();
                int i3 = i;
                for (i = 0; i != c.length; i++) {
                    i3 = (i3 ^ c[i].a().hashCode()) ^ a(c[i].b());
                }
                i = i3;
            } else {
                i = (i ^ a[i2].b().a().hashCode()) ^ a(a[i2].b().b());
            }
        }
        return i;
    }

    public ASN1Encodable a(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        if (str.length() == 0 || str.charAt(0) != '#') {
            if (str.length() != 0 && str.charAt(0) == '\\') {
                str = str.substring(1);
            }
            return b(aSN1ObjectIdentifier, str);
        }
        try {
            return IETFUtils.a(str, 1);
        } catch (IOException e) {
            throw new RuntimeException("can't recode value for oid " + aSN1ObjectIdentifier.a());
        }
    }

    protected ASN1Encodable b(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        return new DERUTF8String(str);
    }

    public boolean a(X500Name x500Name, X500Name x500Name2) {
        RDN[] a = x500Name.a();
        RDN[] a2 = x500Name2.a();
        if (a.length != a2.length) {
            return false;
        }
        boolean z;
        if (a[0].b() == null || a2[0].b() == null) {
            z = false;
        } else if (a[0].b().a().equals(a2[0].b().a())) {
            z = false;
        } else {
            z = true;
        }
        for (int i = 0; i != a.length; i++) {
            if (!a(z, a[i], a2)) {
                return false;
            }
        }
        return true;
    }

    private boolean a(boolean z, RDN rdn, RDN[] rdnArr) {
        int length;
        if (z) {
            length = rdnArr.length - 1;
            while (length >= 0) {
                if (rdnArr[length] == null || !a(rdn, rdnArr[length])) {
                    length--;
                } else {
                    rdnArr[length] = null;
                    return true;
                }
            }
            return false;
        }
        length = 0;
        while (length != rdnArr.length) {
            if (rdnArr[length] == null || !a(rdn, rdnArr[length])) {
                length++;
            } else {
                rdnArr[length] = null;
                return true;
            }
        }
        return false;
    }

    protected boolean a(RDN rdn, RDN rdn2) {
        return IETFUtils.a(rdn, rdn2);
    }
}
