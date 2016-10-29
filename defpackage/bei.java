package defpackage;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import bej;
import bel;
import com.twitter.util.aj;
import cxs;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.spongycastle.jce.provider.BouncyCastleProvider;

/* compiled from: Twttr */
/* renamed from: bei */
public class bei {
    static {
        Security.addProvider(new BouncyCastleProvider());
    }

    public static bel a(Context context, String str) {
        bel bel = null;
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        String e = bei.e(bArr);
        try {
            KeyPairGenerator instance = KeyPairGenerator.getInstance("RSA", "SC");
            instance.initialize(ItemAnimator.FLAG_MOVED);
            KeyPair genKeyPair = instance.genKeyPair();
            String e2 = bei.e(genKeyPair.getPublic().getEncoded());
            bek.a(context, str, bei.e(genKeyPair.getPrivate().getEncoded()), e2, e, 1000);
            bel = new bel(1000, e2, bei.c(context, str));
            bek.c(context, str);
            return bel;
        } catch (NoSuchProviderException e3) {
            cfb.d("LoginVerification", "No such provider for KeyPairGenerator (SC): " + e3.getMessage());
            return bel;
        } catch (NoSuchAlgorithmException e4) {
            cfb.d("LoginVerification", "No such algorithm for KeyPairGenerator (RSA): " + e4.getMessage());
            return bel;
        }
    }

    public static boolean b(Context context, String str) {
        bek.b(context, str);
        return true;
    }

    public static bej a(Context context, String str, String str2, String str3) {
        byte[] a = bei.a(context, str, str3);
        if (a != null) {
            return new bej(str2, bei.e(a));
        }
        return null;
    }

    public static String c(Context context, String str) {
        String g = bek.g(context, str);
        int h = bek.h(context, str);
        if (h <= 0 || aj.a((CharSequence) g)) {
            return BuildConfig.VERSION_NAME;
        }
        return bei.a(g, h);
    }

    static String a(String str, int i) {
        return bei.d(bei.a(cxs.a(str), i));
    }

    private static byte[] a(Context context, String str, String str2) {
        String f = bek.f(context, str);
        String d = bek.d(context, str);
        if (aj.b((CharSequence) f) && aj.b((CharSequence) d) && aj.b((CharSequence) str2)) {
            return bei.a(f, d, str2);
        }
        return null;
    }

    static byte[] a(String str, String str2, String str3) {
        byte[] bArr = null;
        byte[] a = cxs.a(str);
        byte[] a2 = cxs.a(str2);
        byte[] a3 = cxs.a(str3);
        KeySpec x509EncodedKeySpec = new X509EncodedKeySpec(a2);
        KeySpec pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(a);
        try {
            KeyFactory instance = KeyFactory.getInstance("RSA", "SC");
            try {
                PrivateKey generatePrivate = instance.generatePrivate(pKCS8EncodedKeySpec);
                instance.generatePublic(x509EncodedKeySpec);
                try {
                    Signature instance2 = Signature.getInstance("SHA1WithRSA", "SC");
                    try {
                        instance2.initSign(generatePrivate);
                        try {
                            instance2.update(a3);
                            bArr = instance2.sign();
                        } catch (SignatureException e) {
                            cfb.d("LoginVerification", "Security exception while singing challenge: " + e.getMessage());
                        }
                    } catch (InvalidKeyException e2) {
                        cfb.d("LoginVerification", "Invalid key exception while initializing signature: " + e2.getMessage());
                    }
                } catch (NoSuchProviderException e3) {
                    cfb.d("LoginVerification", "No such provider for Signature (SC): " + e3.getMessage());
                } catch (NoSuchAlgorithmException e4) {
                    cfb.d("LoginVerification", "No such algorithm for Signature (SHA1WithRSA): " + e4.getMessage());
                }
            } catch (InvalidKeySpecException e5) {
            }
        } catch (NoSuchProviderException e32) {
            cfb.d("LoginVerification", "No such provider for KeyFactory (SC): " + e32.getMessage());
        } catch (NoSuchAlgorithmException e42) {
            cfb.d("LoginVerification", "No such algorithm for KeyFactory (RSA): " + e42.getMessage());
        }
        return bArr;
    }

    private static byte[] a(byte[] bArr) {
        Object obj = new byte[8];
        obj[7] = (byte) (bArr[7] & 240);
        System.arraycopy(bArr, 0, obj, 0, 7);
        return obj;
    }

    private static byte[] a(byte[] bArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr = bei.b(bArr);
        }
        return bArr;
    }

    private static byte[] b(byte[] bArr) {
        return bei.a(bei.c(bArr));
    }

    private static byte[] c(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA-256").digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    private static String d(byte[] bArr) {
        return bei.f(bArr).substring(0, 12).toLowerCase();
    }

    private static String e(byte[] bArr) {
        try {
            return new String(cxs.a(bArr), "UTF8");
        } catch (UnsupportedEncodingException e) {
            return BuildConfig.VERSION_NAME;
        }
    }

    private static String f(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < bArr.length) {
            long j;
            int length = i + 5 < bArr.length ? 5 : bArr.length - i;
            int ceil = (int) Math.ceil((((double) length) * 8.0d) / 5.0d);
            if (ceil < 8) {
                j = 5 - ((length * 8) % 5);
            } else {
                j = 0;
            }
            long j2 = 0;
            int i2 = 0;
            while (i2 + i < bArr.length && i2 < 5) {
                j2 = ((long) (bArr[i + i2] >= null ? 0 : AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY)) + (((long) bArr[i + i2]) + (j2 << 8));
                i2++;
            }
            j2 <<= j;
            for (length = 0; length < ceil; length++) {
                stringBuilder.append("abcdefghijkmnpqrstuvwxyz23456789".charAt(((int) (j2 >> (((ceil - length) - 1) * 5))) & 31));
            }
            for (length = 0; length < 8 - ceil; length++) {
                stringBuilder.append("=");
            }
            i += 5;
        }
        return stringBuilder.toString();
    }
}
