package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

public class a {
    static Map<String, a> a;
    static String f;
    private static l g;
    private static j h;
    Context b;
    KeyPair c;
    String d;
    long e;

    static {
        a = new HashMap();
    }

    protected a(Context context, String str, Bundle bundle) {
        this.d = TtmlNode.ANONYMOUS_REGION_ID;
        this.b = context.getApplicationContext();
        this.d = str;
    }

    static int a(Context context) {
        int i = 0;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            Log.w("InstanceID", "Never happens: can't find own package " + e);
            return i;
        }
    }

    public static synchronized a a(Context context, Bundle bundle) {
        a aVar;
        synchronized (a.class) {
            String string = bundle == null ? TtmlNode.ANONYMOUS_REGION_ID : bundle.getString("subtype");
            String str = string == null ? TtmlNode.ANONYMOUS_REGION_ID : string;
            Context applicationContext = context.getApplicationContext();
            if (g == null) {
                g = new l(applicationContext);
                h = new j(applicationContext);
            }
            f = Integer.toString(a(applicationContext));
            aVar = (a) a.get(str);
            if (aVar == null) {
                aVar = new a(applicationContext, str, bundle);
                a.put(str, aVar);
            }
        }
        return aVar;
    }

    static String a(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & NalUnitUtil.EXTENDED_SAR);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("InstanceID", "Unexpected error, device missing required alghorithms");
            return null;
        }
    }

    static String a(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    public static a b(Context context) {
        return a(context, null);
    }

    KeyPair a() {
        if (this.c == null) {
            this.c = g.c(this.d);
        }
        if (this.c == null) {
            this.e = System.currentTimeMillis();
            this.c = g.a(this.d, this.e);
        }
        return this.c;
    }

    public void a(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        g.b(this.d, str, str2);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("sender", str);
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("subscription", str);
        bundle.putString("delete", "1");
        bundle.putString("X-delete", "1");
        bundle.putString("subtype", TtmlNode.ANONYMOUS_REGION_ID.equals(this.d) ? str : this.d);
        String str3 = "X-subtype";
        if (!TtmlNode.ANONYMOUS_REGION_ID.equals(this.d)) {
            str = this.d;
        }
        bundle.putString(str3, str);
        h.b(h.a(bundle, a()));
    }

    public String b(String str, String str2, Bundle bundle) throws IOException {
        Object obj = null;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        Object obj2 = 1;
        String a = f() ? null : g.a(this.d, str, str2);
        if (a == null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            if (bundle.getString("ttl") != null) {
                obj2 = null;
            }
            if (!"jwt".equals(bundle.getString("type"))) {
                obj = obj2;
            }
            a = c(str, str2, bundle);
            Log.w("InstanceID", "token: " + a);
            if (!(a == null || r1 == null)) {
                g.a(this.d, str, str2, a, f);
            }
        }
        return a;
    }

    public void b() throws IOException {
        a("*", "*", null);
        c();
    }

    public String c(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("sender", str);
        String str3 = TtmlNode.ANONYMOUS_REGION_ID.equals(this.d) ? str : this.d;
        if (!bundle.containsKey("legacy.register")) {
            bundle.putString("subscription", str);
            bundle.putString("subtype", str3);
            bundle.putString("X-subscription", str);
            bundle.putString("X-subtype", str3);
        }
        return h.b(h.a(bundle, a()));
    }

    void c() {
        this.e = 0;
        g.d(this.d);
        this.c = null;
    }

    public l d() {
        return g;
    }

    j e() {
        return h;
    }

    boolean f() {
        String a = g.a("appVersion");
        if (a == null || !a.equals(f)) {
            return true;
        }
        a = g.a("lastToken");
        if (a == null) {
            return true;
        }
        return (System.currentTimeMillis() / 1000) - Long.valueOf(Long.parseLong(a)).longValue() > 604800;
    }
}
