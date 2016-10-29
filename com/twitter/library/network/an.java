package com.twitter.library.network;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import android.util.Pair;
import com.twitter.config.AppConfig;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.RateLimit;
import com.twitter.library.api.d;
import com.twitter.library.service.a;
import com.twitter.library.service.aa;
import com.twitter.library.service.e;
import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.w;
import defpackage.bvs;
import defpackage.bvy;
import defpackage.cfb;
import defpackage.cto;
import defpackage.cwj;
import java.net.URI;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.TimeZone;

/* compiled from: Twttr */
public class an {
    private static an j;
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final ar e;
    public final String f;
    public final String g;
    public String h;
    public final String i;
    private final List<Pair<String, URI>> k;
    private final Context l;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private an(android.content.Context r9) {
        /*
        r8 = this;
        r4 = 0;
        r6 = 0;
        r8.<init>();
        r0 = r9.getApplicationContext();
        r8.l = r0;
        r0 = com.twitter.util.c.c(r9);
        r8.g = r0;
        r0 = new com.twitter.library.network.ar;
        r1 = com.twitter.util.c.b(r9);
        r2 = r8.g;
        r3 = b(r9);
        r0.<init>(r9, r1, r2, r3);
        r8.e = r0;
        r0 = com.twitter.config.b.b();
        r8.f = r0;
        r0 = bdc.base_url_mobile;
        r0 = r9.getString(r0);
        r8.c = r0;
        r0 = bdc.base_host;
        r2 = r9.getString(r0);
        r0 = bdc.base_url;
        r1 = r9.getString(r0);
        r0 = bdc.upload_host;
        r3 = r9.getString(r0);
        r0 = com.twitter.config.AppConfig.m();
        r0 = r0.p();
        if (r0 == 0) goto L_0x00ac;
    L_0x004c:
        r0 = "debug_prefs";
        r5 = r9.getSharedPreferences(r0, r6);
        r0 = "staging_enabled";
        r0 = r5.getBoolean(r0, r6);
        if (r0 == 0) goto L_0x00a9;
    L_0x005c:
        r0 = "staging_url";
        r0 = r5.getString(r0, r4);
        if (r0 == 0) goto L_0x00a9;
    L_0x0065:
        r1 = 47;
        r1 = r0.lastIndexOf(r1);
        r1 = r0.substring(r6, r1);
    L_0x006f:
        r2 = "upload_staging_enabled";
        r2 = r5.getBoolean(r2, r6);
        if (r2 == 0) goto L_0x00a7;
    L_0x0078:
        r2 = "upload_staging_host";
        r2 = r5.getString(r2, r4);
        if (r2 == 0) goto L_0x00a7;
    L_0x0081:
        r3 = new java.util.LinkedList;
        r3.<init>();
        r3 = java.util.Collections.synchronizedList(r3);
        r7 = r3;
        r3 = r1;
        r1 = r0;
        r0 = r7;
    L_0x008e:
        r8.a = r3;
        r8.b = r1;
        r8.d = r2;
        r8.a();
        r1 = r9.getContentResolver();
        r2 = "android_id";
        r1 = android.provider.Settings.Secure.getString(r1, r2);
        r8.i = r1;
        r8.k = r0;
        return;
    L_0x00a7:
        r2 = r3;
        goto L_0x0081;
    L_0x00a9:
        r0 = r1;
        r1 = r2;
        goto L_0x006f;
    L_0x00ac:
        r0 = r4;
        r7 = r3;
        r3 = r2;
        r2 = r7;
        goto L_0x008e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.network.an.<init>(android.content.Context):void");
    }

    public static synchronized an a(Context context) {
        an anVar;
        synchronized (an.class) {
            if (j == null) {
                j = new an(context.getApplicationContext());
            }
            anVar = j;
        }
        return anVar;
    }

    public void a() {
        this.h = w.c(this.l.getResources().getConfiguration().locale);
    }

    public static RateLimit a(HttpOperation httpOperation) {
        String b = httpOperation.b("x-rate-limit-limit");
        if (b == null) {
            return null;
        }
        int parseInt = Integer.parseInt(b);
        String b2 = httpOperation.b("x-rate-limit-remaining");
        if (b2 == null) {
            return null;
        }
        int parseInt2 = Integer.parseInt(b2);
        String b3 = httpOperation.b("x-rate-limit-reset");
        if (b3 != null) {
            return new RateLimit(parseInt2, parseInt, Long.parseLong(b3) * 1000);
        }
        return null;
    }

    public static int[] a(Bundle bundle) {
        if (bundle.containsKey("custom_errors")) {
            return bundle.getIntArray("custom_errors");
        }
        return cd.b;
    }

    private static Iterable<ca> d(aa aaVar) {
        return b(aaVar, 326);
    }

    public static boolean a(aa aaVar) {
        return a(aaVar, 326);
    }

    public static String b(aa aaVar) {
        for (ca caVar : d(aaVar)) {
            if (caVar.g != null) {
                return caVar.g;
            }
        }
        return null;
    }

    public static boolean c(aa aaVar) {
        for (ca caVar : d(aaVar)) {
            if (caVar.f > 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(aa aaVar, int i) {
        return !CollectionUtils.a(b(aaVar, i));
    }

    public static Iterable<ca> b(aa aaVar, int i) {
        if (aaVar.i() instanceof a) {
            return cto.a(((a) aaVar.i()).a(), new ao(i));
        }
        return n.g();
    }

    public static StringBuilder a(String str, Object... objArr) {
        StringBuilder stringBuilder = new StringBuilder(str);
        if (objArr != null) {
            for (Object obj : objArr) {
                stringBuilder.append('/');
                stringBuilder.append(Uri.encode(obj.toString(), "/"));
            }
        }
        return stringBuilder;
    }

    public void a(e eVar) {
        Locale locale = this.l.getResources().getConfiguration().locale;
        if (locale != null) {
            CharSequence country = locale.getCountry();
            CharSequence toLowerCase = w.b(locale).toLowerCase();
            if (aj.b(toLowerCase) || aj.b(country)) {
                eVar.a("localize", true);
                if (aj.b(toLowerCase)) {
                    eVar.a("lang", toLowerCase);
                }
                if (aj.b(country)) {
                    eVar.a("country", country);
                }
            }
        }
    }

    public static int a(int i, int i2) {
        if (i % i2 > 0) {
            return (i / i2) + 1;
        }
        return i / i2;
    }

    public String b() {
        return this.a;
    }

    public static void a(HttpOperation httpOperation, String str, String str2) {
        httpOperation.a(str, str2);
    }

    public boolean c() {
        if (cwj.a() || AppConfig.m().p()) {
            return PreferenceManager.getDefaultSharedPreferences(this.l).getBoolean("extra_dtab_enabled", false);
        }
        return false;
    }

    public String d() {
        return PreferenceManager.getDefaultSharedPreferences(this.l).getString("extra_dtab", BuildConfig.VERSION_NAME);
    }

    public boolean e() {
        if (AppConfig.m().p()) {
            return PreferenceManager.getDefaultSharedPreferences(this.l).getBoolean("debug_force_zipkin_tracing", false);
        }
        return false;
    }

    public static boolean b(Context context) {
        if (cwj.a() || AppConfig.m().p()) {
            return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("debug_prod_ua", false);
        }
        return false;
    }

    private boolean b(URI uri) {
        return !uri.getHost().endsWith("twimg.com");
    }

    public HashMap<String, String> a(URI uri) {
        HashMap<String, String> hashMap = new HashMap();
        hashMap.put("User-Agent", this.e.toString());
        hashMap.put("X-Client-UUID", this.f);
        hashMap.put("X-Twitter-Client", "TwitterAndroid");
        hashMap.put("X-Twitter-Client-Version", this.g);
        hashMap.put("X-Twitter-API-Version", "5");
        hashMap.put("Accept-Language", this.h);
        hashMap.put("X-Twitter-Client-Language", this.h);
        hashMap.put("X-Twitter-Client-DeviceID", this.i);
        if (e() && b(uri)) {
            String b = aj.b(16);
            hashMap.put("X-B3-Flags", "1");
            hashMap.put("X-B3-TraceId", b);
            hashMap.put("X-B3-SpanId", b);
            this.k.add(0, new Pair(b, uri));
            if (this.k.size() > 10) {
                this.k.remove(this.k.size() - 1);
            }
            cfb.b("TwitterAPI", "TraceID " + b + " for [" + uri + "]");
        }
        v a = v.a();
        if (a.c() && a.a(uri)) {
            s d = a.d();
            hashMap.put("x-tsa-max-connection-bandwidth-kbs", Integer.toString(d.b()));
            hashMap.put("x-tsa-fixed-request-latency-ms", Integer.toString(d.c()));
        }
        if (c()) {
            hashMap.put("Dtab-Local", d());
        }
        if (bvs.a().a()) {
            hashMap.put("Geolocation", bvy.a(this.l).b());
        }
        d g = g();
        if (g == null || !g.b()) {
            hashMap.put("Timezone", TimeZone.getDefault().getID());
        }
        if (g != null) {
            hashMap.put("X-Twitter-Client-AdID", g.a());
            hashMap.put("X-Twitter-Client-Limit-Ad-Tracking", g.b() ? "1" : "0");
        }
        if (AppConfig.m().p()) {
            CharSequence string = PreferenceManager.getDefaultSharedPreferences(this.l).getString("simulate_back_pressure", null);
            if (aj.b(string)) {
                hashMap.put("Simulate-Back-Pressure", string);
            }
        }
        return hashMap;
    }

    private d g() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.l);
        boolean z = defaultSharedPreferences.getBoolean("adid_no_tracking_enabled", false);
        CharSequence string = defaultSharedPreferences.getString("adid_identifier", BuildConfig.VERSION_NAME);
        if (aj.b(string)) {
            return new d(string, z);
        }
        return null;
    }

    public void b(HttpOperation httpOperation) {
        for (Entry entry : a(httpOperation.i()).entrySet()) {
            httpOperation.a((String) entry.getKey(), (String) entry.getValue());
        }
    }

    public List<Pair<String, URI>> f() {
        return this.k;
    }

    public void c(HttpOperation httpOperation) {
        httpOperation.a("X-Twitter-Polling", "True");
        b(httpOperation);
    }

    public static boolean d(HttpOperation httpOperation) {
        return "True".equals(httpOperation.a("X-Twitter-Polling"));
    }
}
