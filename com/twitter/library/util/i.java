package com.twitter.library.util;

import cqb;
import cqe;
import java.math.BigInteger;
import java.security.MessageDigest;

/* compiled from: Twttr */
public final class i {
    private static final byte[] a;
    private static final cqe b;

    static {
        a = a();
        b = new cqe();
    }

    private static byte[] a() {
        try {
            byte[] toByteArray = new BigInteger("34c2d0c942b3ac29bd2aef184aaba9d4d7a078d3", 16).toByteArray();
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(toByteArray);
            return instance.digest();
        } catch (Exception e) {
            return new byte[0];
        }
    }

    public static String a(String str) {
        String str2 = TtmlNode.ANONYMOUS_REGION_ID;
        try {
            if (a.length > 0) {
                str2 = cqb.a(b.a(str.getBytes(), a), 2);
            }
        } catch (Exception e) {
        }
        return str2;
    }
}
