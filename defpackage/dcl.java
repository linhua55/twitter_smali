package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import java.util.Locale;
import java.util.regex.Pattern;

/* compiled from: Twttr */
/* renamed from: dcl */
public final class dcl {
    private static final String a;
    private static final String b;
    private static final String c;

    static {
        a = Pattern.quote("/");
        b = String.format(Locale.US, "%s/%d/%s", new Object[]{dcl.a(VERSION.RELEASE), Integer.valueOf(VERSION.SDK_INT), dcl.a(Build.DISPLAY)});
        c = String.format(Locale.US, "%s/%s", new Object[]{dcl.a(Build.MANUFACTURER), dcl.a(Build.MODEL)});
    }

    public static String a(Context context) {
        return dcl.b(context) + "-" + dcl.c(context);
    }

    public static String b(Context context) {
        return Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String c(Context context) {
        return context.getPackageName();
    }

    public static String a() {
        return b;
    }

    static String a(String str) {
        return str.replaceAll(a, "");
    }

    public static boolean a(Context context, String str) {
        int i = 0;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
            boolean z = applicationInfo.enabled;
            if (VERSION.SDK_INT < 17) {
                return z;
            }
            if ((applicationInfo.flags & 8388608) != 0) {
                i = 1;
            }
            return i & z;
        } catch (NameNotFoundException e) {
            return false;
        }
    }
}
