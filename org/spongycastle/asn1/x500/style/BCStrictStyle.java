package org.spongycastle.asn1.x500.style;

import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;

/* compiled from: Twttr */
public class BCStrictStyle extends BCStyle {
    public static final X500NameStyle a;

    static {
        a = new BCStrictStyle();
    }

    public boolean a(X500Name x500Name, X500Name x500Name2) {
        RDN[] a = x500Name.a();
        RDN[] a2 = x500Name2.a();
        if (a.length != a2.length) {
            return false;
        }
        for (int i = 0; i != a.length; i++) {
            if (!a(a[i], a2[i])) {
                return false;
            }
        }
        return true;
    }
}
