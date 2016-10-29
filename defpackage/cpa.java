package defpackage;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: Twttr */
/* renamed from: cpa */
public class cpa {
    public static int a(String str, String str2) {
        try {
            return new BigInteger(1, MessageDigest.getInstance("MD5").digest((str + ":" + str2).getBytes())).mod(new BigInteger(String.valueOf(10000))).intValue();
        } catch (NoSuchAlgorithmException e) {
            return 0;
        }
    }
}
