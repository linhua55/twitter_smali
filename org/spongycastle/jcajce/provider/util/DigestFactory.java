package org.spongycastle.jcajce.provider.util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.util.Strings;

/* compiled from: Twttr */
public class DigestFactory {
    private static Set a;
    private static Set b;
    private static Set c;
    private static Set d;
    private static Set e;
    private static Set f;
    private static Map g;

    static {
        a = new HashSet();
        b = new HashSet();
        c = new HashSet();
        d = new HashSet();
        e = new HashSet();
        f = new HashSet();
        g = new HashMap();
        a.add("MD5");
        a.add(PKCSObjectIdentifiers.H.a());
        b.add("SHA1");
        b.add("SHA-1");
        b.add(OIWObjectIdentifiers.i.a());
        c.add("SHA224");
        c.add("SHA-224");
        c.add(NISTObjectIdentifiers.f.a());
        d.add("SHA256");
        d.add("SHA-256");
        d.add(NISTObjectIdentifiers.c.a());
        e.add("SHA384");
        e.add("SHA-384");
        e.add(NISTObjectIdentifiers.d.a());
        f.add("SHA512");
        f.add("SHA-512");
        f.add(NISTObjectIdentifiers.e.a());
        g.put("MD5", PKCSObjectIdentifiers.H);
        g.put(PKCSObjectIdentifiers.H.a(), PKCSObjectIdentifiers.H);
        g.put("SHA1", OIWObjectIdentifiers.i);
        g.put("SHA-1", OIWObjectIdentifiers.i);
        g.put(OIWObjectIdentifiers.i.a(), OIWObjectIdentifiers.i);
        g.put("SHA224", NISTObjectIdentifiers.f);
        g.put("SHA-224", NISTObjectIdentifiers.f);
        g.put(NISTObjectIdentifiers.f.a(), NISTObjectIdentifiers.f);
        g.put("SHA256", NISTObjectIdentifiers.c);
        g.put("SHA-256", NISTObjectIdentifiers.c);
        g.put(NISTObjectIdentifiers.c.a(), NISTObjectIdentifiers.c);
        g.put("SHA384", NISTObjectIdentifiers.d);
        g.put("SHA-384", NISTObjectIdentifiers.d);
        g.put(NISTObjectIdentifiers.d.a(), NISTObjectIdentifiers.d);
        g.put("SHA512", NISTObjectIdentifiers.e);
        g.put("SHA-512", NISTObjectIdentifiers.e);
        g.put(NISTObjectIdentifiers.e.a(), NISTObjectIdentifiers.e);
    }

    public static Digest a(String str) {
        String b = Strings.b(str);
        if (b.contains(b)) {
            return new SHA1Digest();
        }
        if (a.contains(b)) {
            return new MD5Digest();
        }
        if (c.contains(b)) {
            return new SHA224Digest();
        }
        if (d.contains(b)) {
            return new SHA256Digest();
        }
        if (e.contains(b)) {
            return new SHA384Digest();
        }
        if (f.contains(b)) {
            return new SHA512Digest();
        }
        return null;
    }

    public static boolean a(String str, String str2) {
        return (b.contains(str) && b.contains(str2)) || ((c.contains(str) && c.contains(str2)) || ((d.contains(str) && d.contains(str2)) || ((e.contains(str) && e.contains(str2)) || ((f.contains(str) && f.contains(str2)) || (a.contains(str) && a.contains(str2))))));
    }

    public static ASN1ObjectIdentifier b(String str) {
        return (ASN1ObjectIdentifier) g.get(str);
    }
}
