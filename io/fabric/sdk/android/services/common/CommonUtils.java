package io.fabric.sdk.android.services.common;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import io.fabric.sdk.android.f;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class CommonUtils {
    public static final Comparator<File> a;
    private static Boolean b;
    private static final char[] c;
    private static long d;

    /* compiled from: Twttr */
    enum Architecture {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;
        
        private static final Map<String, Architecture> k;

        static {
            k = new HashMap(4);
            k.put("armeabi-v7a", ARMV7);
            k.put("armeabi", ARMV6);
            k.put("arm64-v8a", ARM64);
            k.put("x86", X86_32);
        }

        static Architecture a() {
            Object obj = Build.CPU_ABI;
            if (TextUtils.isEmpty(obj)) {
                f.h().a("Fabric", "Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            Architecture architecture = (Architecture) k.get(obj.toLowerCase(Locale.US));
            if (architecture == null) {
                return UNKNOWN;
            }
            return architecture;
        }
    }

    static {
        b = null;
        c = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        d = -1;
        a = new m();
    }

    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences("com.crashlytics.prefs", 0);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.io.File r7, java.lang.String r8) {
        /*
        r0 = 0;
        r5 = 1;
        r1 = r7.exists();
        if (r1 == 0) goto L_0x003b;
    L_0x0008:
        r2 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x003c, all -> 0x0063 }
        r1 = new java.io.FileReader;	 Catch:{ Exception -> 0x003c, all -> 0x0063 }
        r1.<init>(r7);	 Catch:{ Exception -> 0x003c, all -> 0x0063 }
        r3 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r2.<init>(r1, r3);	 Catch:{ Exception -> 0x003c, all -> 0x0063 }
    L_0x0014:
        r1 = r2.readLine();	 Catch:{ Exception -> 0x006f }
        if (r1 == 0) goto L_0x0035;
    L_0x001a:
        r3 = "\\s*:\\s*";
        r3 = java.util.regex.Pattern.compile(r3);	 Catch:{ Exception -> 0x006f }
        r4 = 2;
        r1 = r3.split(r1, r4);	 Catch:{ Exception -> 0x006f }
        r3 = r1.length;	 Catch:{ Exception -> 0x006f }
        if (r3 <= r5) goto L_0x0014;
    L_0x0029:
        r3 = 0;
        r3 = r1[r3];	 Catch:{ Exception -> 0x006f }
        r3 = r3.equals(r8);	 Catch:{ Exception -> 0x006f }
        if (r3 == 0) goto L_0x0014;
    L_0x0032:
        r3 = 1;
        r0 = r1[r3];	 Catch:{ Exception -> 0x006f }
    L_0x0035:
        r1 = "Failed to close system file reader.";
        a(r2, r1);
    L_0x003b:
        return r0;
    L_0x003c:
        r1 = move-exception;
        r2 = r0;
    L_0x003e:
        r3 = io.fabric.sdk.android.f.h();	 Catch:{ all -> 0x006d }
        r4 = "Fabric";
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x006d }
        r5.<init>();	 Catch:{ all -> 0x006d }
        r6 = "Error parsing ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x006d }
        r5 = r5.append(r7);	 Catch:{ all -> 0x006d }
        r5 = r5.toString();	 Catch:{ all -> 0x006d }
        r3.e(r4, r5, r1);	 Catch:{ all -> 0x006d }
        r1 = "Failed to close system file reader.";
        a(r2, r1);
        goto L_0x003b;
    L_0x0063:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x0066:
        r1 = "Failed to close system file reader.";
        a(r2, r1);
        throw r0;
    L_0x006d:
        r0 = move-exception;
        goto L_0x0066;
    L_0x006f:
        r1 = move-exception;
        goto L_0x003e;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.CommonUtils.a(java.io.File, java.lang.String):java.lang.String");
    }

    public static int a() {
        return Architecture.a().ordinal();
    }

    public static synchronized long b() {
        long j;
        synchronized (CommonUtils.class) {
            if (d == -1) {
                j = 0;
                Object a = a(new File("/proc/meminfo"), "MemTotal");
                if (!TextUtils.isEmpty(a)) {
                    String toUpperCase = a.toUpperCase(Locale.US);
                    try {
                        if (toUpperCase.endsWith("KB")) {
                            j = a(toUpperCase, "KB", 1024);
                        } else if (toUpperCase.endsWith("MB")) {
                            j = a(toUpperCase, "MB", 1048576);
                        } else if (toUpperCase.endsWith("GB")) {
                            j = a(toUpperCase, "GB", 1073741824);
                        } else {
                            f.h().a("Fabric", "Unexpected meminfo format while computing RAM: " + toUpperCase);
                        }
                    } catch (Throwable e) {
                        f.h().e("Fabric", "Unexpected meminfo format while computing RAM: " + toUpperCase, e);
                    }
                }
                d = j;
            }
            j = d;
        }
        return j;
    }

    static long a(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * ((long) i);
    }

    public static RunningAppProcessInfo a(String str, Context context) {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.processName.equals(str)) {
                    return runningAppProcessInfo;
                }
            }
        }
        return null;
    }

    public static String a(InputStream inputStream) throws IOException {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    public static String a(String str) {
        return a(str, "SHA-1");
    }

    public static String b(InputStream inputStream) {
        return a(inputStream, "SHA-1");
    }

    private static String a(InputStream inputStream, String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return a(instance.digest());
                }
                instance.update(bArr, 0, read);
            }
        } catch (Throwable e) {
            f.h().e("Fabric", "Could not calculate hash for app icon.", e);
            return "";
        }
    }

    private static String a(byte[] bArr, String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(bArr);
            return a(instance.digest());
        } catch (Throwable e) {
            f.h().e("Fabric", "Could not create hashing algorithm: " + str + ", returning empty string.", e);
            return "";
        }
    }

    private static String a(String str, String str2) {
        return a(str.getBytes(), str2);
    }

    public static String a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        List<String> arrayList = new ArrayList();
        for (String str : strArr) {
            if (str != null) {
                arrayList.add(str.replace("-", "").toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder stringBuilder = new StringBuilder();
        for (String append : arrayList) {
            stringBuilder.append(append);
        }
        String append2 = stringBuilder.toString();
        return append2.length() > 0 ? a(append2) : null;
    }

    public static long b(Context context) {
        MemoryInfo memoryInfo = new MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static long b(String str) {
        StatFs statFs = new StatFs(str);
        long blockSize = (long) statFs.getBlockSize();
        return (((long) statFs.getBlockCount()) * blockSize) - (((long) statFs.getAvailableBlocks()) * blockSize);
    }

    public static float c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        return ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1));
    }

    public static boolean d(Context context) {
        if (f(context)) {
            return false;
        }
        return ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null;
    }

    public static void a(Context context, String str) {
        if (e(context)) {
            f.h().a("Fabric", str);
        }
    }

    public static void a(Context context, String str, Throwable th) {
        if (e(context)) {
            f.h().e("Fabric", str);
        }
    }

    public static void a(Context context, int i, String str, String str2) {
        if (e(context)) {
            f.h().a(i, "Fabric", str2);
        }
    }

    public static boolean e(Context context) {
        if (b == null) {
            b = Boolean.valueOf(a(context, "com.crashlytics.Trace", false));
        }
        return b.booleanValue();
    }

    public static boolean a(Context context, String str, boolean z) {
        if (context == null) {
            return z;
        }
        Resources resources = context.getResources();
        if (resources == null) {
            return z;
        }
        int a = a(context, str, "bool");
        if (a > 0) {
            return resources.getBoolean(a);
        }
        int a2 = a(context, str, "string");
        if (a2 > 0) {
            return Boolean.parseBoolean(context.getString(a2));
        }
        return z;
    }

    public static int a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, j(context));
    }

    public static boolean f(Context context) {
        return "sdk".equals(Build.PRODUCT) || "google_sdk".equals(Build.PRODUCT) || Secure.getString(context.getContentResolver(), "android_id") == null;
    }

    public static boolean g(Context context) {
        boolean f = f(context);
        String str = Build.TAGS;
        if ((!f && str != null && str.contains("test-keys")) || new File("/system/app/Superuser.apk").exists()) {
            return true;
        }
        File file = new File("/system/xbin/su");
        if (f || !file.exists()) {
            return false;
        }
        return true;
    }

    public static boolean c() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    public static int h(Context context) {
        int i = 0;
        if (f(context)) {
            i = 1;
        }
        if (g(context)) {
            i |= 2;
        }
        if (c()) {
            return i | 4;
        }
        return i;
    }

    public static int a(Context context, boolean z) {
        float c = c(context);
        if (!z) {
            return 1;
        }
        if (z && ((double) c) >= 99.0d) {
            return 3;
        }
        if (!z || ((double) c) >= 99.0d) {
            return 0;
        }
        return 2;
    }

    public static String a(byte[] bArr) {
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            cArr[i * 2] = c[i2 >>> 4];
            cArr[(i * 2) + 1] = c[i2 & 15];
        }
        return new String(cArr);
    }

    public static boolean i(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static String b(Context context, String str) {
        int a = a(context, str, "string");
        if (a > 0) {
            return context.getString(a);
        }
        return "";
    }

    public static void a(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable e) {
                f.h().e("Fabric", str, e);
            }
        }
    }

    public static void a(Flushable flushable, String str) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (Throwable e) {
                f.h().e("Fabric", str, e);
            }
        }
    }

    public static boolean c(String str) {
        return str == null || str.length() == 0;
    }

    public static String a(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("value must be zero or greater");
        }
        return String.format(Locale.US, "%1$10s", new Object[]{Integer.valueOf(i)}).replace(' ', '0');
    }

    public static String j(Context context) {
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            return context.getResources().getResourcePackageName(i);
        }
        return context.getPackageName();
    }

    public static void a(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static String b(int i) {
        switch (i) {
            case p.View_paddingStart /*2*/:
                return "V";
            case p.View_paddingEnd /*3*/:
                return "D";
            case p.View_theme /*4*/:
                return "I";
            case p.Toolbar_contentInsetStart /*5*/:
                return "W";
            case p.Toolbar_contentInsetEnd /*6*/:
                return "E";
            case p.Toolbar_contentInsetLeft /*7*/:
                return "A";
            default:
                return "?";
        }
    }

    public static String k(Context context) {
        Closeable openRawResource;
        Throwable e;
        Throwable th;
        String str = null;
        try {
            openRawResource = context.getResources().openRawResource(l(context));
            try {
                String b = b((InputStream) openRawResource);
                if (!c(b)) {
                    str = b;
                }
                a(openRawResource, "Failed to close icon input stream.");
            } catch (Exception e2) {
                e = e2;
                try {
                    f.h().e("Fabric", "Could not calculate hash for app icon.", e);
                    a(openRawResource, "Failed to close icon input stream.");
                    return str;
                } catch (Throwable th2) {
                    th = th2;
                    a(openRawResource, "Failed to close icon input stream.");
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            openRawResource = null;
            f.h().e("Fabric", "Could not calculate hash for app icon.", e);
            a(openRawResource, "Failed to close icon input stream.");
            return str;
        } catch (Throwable e4) {
            openRawResource = null;
            th = e4;
            a(openRawResource, "Failed to close icon input stream.");
            throw th;
        }
        return str;
    }

    public static int l(Context context) {
        return context.getApplicationContext().getApplicationInfo().icon;
    }

    public static String m(Context context) {
        int a = a(context, "io.fabric.android.build_id", "string");
        if (a == 0) {
            a = a(context, "com.crashlytics.android.build_id", "string");
        }
        if (a == 0) {
            return null;
        }
        String string = context.getResources().getString(a);
        f.h().a("Fabric", "Build ID is: " + string);
        return string;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static boolean c(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static boolean n(Context context) {
        if (!c(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }
}
