package org.spongycastle.jcajce.provider.util;

import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.ntt.NTTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.util.Integers;

/* compiled from: Twttr */
public class SecretKeyUtil {
    private static Map a;

    static {
        a = new HashMap();
        a.put(PKCSObjectIdentifiers.B.a(), Integers.a(192));
        a.put(NISTObjectIdentifiers.k, Integers.a(128));
        a.put(NISTObjectIdentifiers.r, Integers.a(192));
        a.put(NISTObjectIdentifiers.y, Integers.a(256));
        a.put(NTTObjectIdentifiers.a, Integers.a(128));
        a.put(NTTObjectIdentifiers.b, Integers.a(192));
        a.put(NTTObjectIdentifiers.c, Integers.a(256));
    }
}
