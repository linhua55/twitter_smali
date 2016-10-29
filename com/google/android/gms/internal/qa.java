package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import java.math.BigInteger;
import java.util.Locale;

@oi
public final class qa {
    private static final Object a;
    private static String b;

    static {
        a = new Object();
    }

    public static String a() {
        String str;
        synchronized (a) {
            str = b;
        }
        return str;
    }

    public static String a(Context context, String str, String str2) {
        String str3;
        synchronized (a) {
            if (b == null && !TextUtils.isEmpty(str)) {
                b(context, str, str2);
            }
            str3 = b;
        }
        return str3;
    }

    private static void b(Context context, String str, String str2) {
        try {
            ClassLoader classLoader = context.createPackageContext(str2, 3).getClassLoader();
            Class cls = Class.forName("com.google.ads.mediation.MediationAdapter", false, classLoader);
            BigInteger bigInteger = new BigInteger(new byte[1]);
            String[] split = str.split(",");
            BigInteger bigInteger2 = bigInteger;
            for (int i = 0; i < split.length; i++) {
                if (ar.e().a(classLoader, cls, split[i])) {
                    bigInteger2 = bigInteger2.setBit(i);
                }
            }
            b = String.format(Locale.US, "%X", new Object[]{bigInteger2});
        } catch (Throwable th) {
            b = NotificationCompatApi21.CATEGORY_ERROR;
        }
    }
}
