package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.v;
import com.google.android.gms.ads.internal.request.x;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public final class ok extends v {
    private static final Object a;
    private static ok b;
    private final Context c;
    private final oj d;
    private final bx e;
    private final ik f;

    static {
        a = new Object();
    }

    ok(Context context, bx bxVar, oj ojVar) {
        this.c = context;
        this.d = ojVar;
        this.e = bxVar;
        this.f = new ik(context.getApplicationContext() != null ? context.getApplicationContext() : context, new VersionInfoParcel(8487000, 8487000, true), bxVar.a(), new os(this), new ix());
    }

    private static AdResponseParcel a(Context context, ik ikVar, bx bxVar, oj ojVar, AdRequestInfoParcel adRequestInfoParcel) {
        Bundle bundle;
        Future future;
        Throwable e;
        b.a("Starting ad request from service.");
        cj.a(context);
        cy cyVar = new cy(((Boolean) cj.G.c()).booleanValue(), "load_ad", adRequestInfoParcel.d.b);
        if (adRequestInfoParcel.a > 10 && adRequestInfoParcel.B != -1) {
            cyVar.a(cyVar.a(adRequestInfoParcel.B), "cts");
        }
        cu a = cyVar.a();
        Bundle bundle2 = (adRequestInfoParcel.a < 4 || adRequestInfoParcel.o == null) ? null : adRequestInfoParcel.o;
        if (!((Boolean) cj.P.c()).booleanValue() || ojVar.i == null) {
            bundle = bundle2;
            future = null;
        } else {
            if (bundle2 == null && ((Boolean) cj.Q.c()).booleanValue()) {
                qd.e("contentInfo is not present, but we'll still launch the app index task");
                bundle2 = new Bundle();
            }
            if (bundle2 != null) {
                bundle = bundle2;
                future = qq.a(new ol(ojVar, context, adRequestInfoParcel, bundle2));
            } else {
                bundle = bundle2;
                future = null;
            }
        }
        ojVar.d.a();
        pb a2 = ar.k().a(context);
        if (a2.m == -1) {
            b.a("Device is offline.");
            return new AdResponseParcel(2);
        }
        String uuid = adRequestInfoParcel.a >= 7 ? adRequestInfoParcel.w : UUID.randomUUID().toString();
        ov ovVar = new ov(uuid, adRequestInfoParcel.f.packageName);
        if (adRequestInfoParcel.c.c != null) {
            String string = adRequestInfoParcel.c.c.getString("_ad");
            if (string != null) {
                return ou.a(context, adRequestInfoParcel, string);
            }
        }
        Location a3 = ojVar.d.a(250);
        String a4 = ojVar.e.a(context, adRequestInfoParcel.e, adRequestInfoParcel.g.packageName);
        List a5 = ojVar.b.a(adRequestInfoParcel);
        String a6 = ojVar.f.a(adRequestInfoParcel);
        pi a7 = ojVar.g.a(context);
        if (future != null) {
            try {
                qd.e("Waiting for app index fetching task.");
                future.get(((Long) cj.R.c()).longValue(), TimeUnit.MILLISECONDS);
                qd.e("App index fetching task completed.");
            } catch (ExecutionException e2) {
                e = e2;
                b.d("Failed to fetch app index signal", e);
            } catch (InterruptedException e3) {
                e = e3;
                b.d("Failed to fetch app index signal", e);
            } catch (TimeoutException e4) {
                b.a("Timed out waiting for app index fetching task");
            }
        }
        JSONObject a8 = ou.a(context, adRequestInfoParcel, a2, a7, a3, bxVar, a4, a6, a5, bundle);
        if (adRequestInfoParcel.a < 7) {
            try {
                a8.put("request_id", uuid);
            } catch (JSONException e5) {
            }
        }
        if (a8 == null) {
            return new AdResponseParcel(0);
        }
        String jSONObject = a8.toString();
        cyVar.a(a, "arc");
        cu a9 = cyVar.a();
        if (((Boolean) cj.c.c()).booleanValue()) {
            qw.a.post(new om(ikVar, ovVar, cyVar, a9, jSONObject));
        } else {
            qw.a.post(new op(context, adRequestInfoParcel, ovVar, cyVar, a9, jSONObject, bxVar));
        }
        AdResponseParcel adResponseParcel;
        try {
            pa paVar = (pa) ovVar.b().get(10, TimeUnit.SECONDS);
            if (paVar == null) {
                adResponseParcel = new AdResponseParcel(0);
                return adResponseParcel;
            } else if (paVar.a() != -2) {
                adResponseParcel = new AdResponseParcel(paVar.a());
                qw.a.post(new oq(ojVar, context, ovVar, adRequestInfoParcel));
                return adResponseParcel;
            } else {
                if (cyVar.e() != null) {
                    cyVar.a(cyVar.e(), "rur");
                }
                String str = null;
                if (paVar.f()) {
                    str = ojVar.a.a(adRequestInfoParcel.g.packageName);
                }
                adResponseParcel = a(adRequestInfoParcel, context, adRequestInfoParcel.k.b, paVar.d(), str, paVar.h() ? a4 : null, paVar, cyVar, ojVar);
                if (adResponseParcel.x == 1) {
                    ojVar.e.a(context, adRequestInfoParcel.g.packageName);
                }
                cyVar.a(a, "tts");
                adResponseParcel.z = cyVar.c();
                qw.a.post(new oq(ojVar, context, ovVar, adRequestInfoParcel));
                return adResponseParcel;
            }
        } catch (Exception e6) {
            adResponseParcel = new AdResponseParcel(0);
            return adResponseParcel;
        } finally {
            qw.a.post(new oq(ojVar, context, ovVar, adRequestInfoParcel));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.ads.internal.request.AdResponseParcel a(com.google.android.gms.ads.internal.request.AdRequestInfoParcel r13, android.content.Context r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, com.google.android.gms.internal.pa r19, com.google.android.gms.internal.cy r20, com.google.android.gms.internal.oj r21) {
        /*
        if (r20 == 0) goto L_0x00fb;
    L_0x0002:
        r2 = r20.a();
        r3 = r2;
    L_0x0007:
        r8 = new com.google.android.gms.internal.oy;	 Catch:{ IOException -> 0x0113 }
        r8.<init>(r13);	 Catch:{ IOException -> 0x0113 }
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0113 }
        r2.<init>();	 Catch:{ IOException -> 0x0113 }
        r4 = "AdRequestServiceImpl: Sending request: ";
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x0113 }
        r0 = r16;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x0113 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x0113 }
        com.google.android.gms.ads.internal.util.client.b.a(r2);	 Catch:{ IOException -> 0x0113 }
        r4 = new java.net.URL;	 Catch:{ IOException -> 0x0113 }
        r0 = r16;
        r4.<init>(r0);	 Catch:{ IOException -> 0x0113 }
        r2 = 0;
        r5 = com.google.android.gms.ads.internal.ar.i();	 Catch:{ IOException -> 0x0113 }
        r10 = r5.b();	 Catch:{ IOException -> 0x0113 }
        r6 = r2;
        r7 = r4;
    L_0x0037:
        if (r21 == 0) goto L_0x0040;
    L_0x0039:
        r0 = r21;
        r2 = r0.h;	 Catch:{ IOException -> 0x0113 }
        r2.a();	 Catch:{ IOException -> 0x0113 }
    L_0x0040:
        r2 = r7.openConnection();	 Catch:{ IOException -> 0x0113 }
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ IOException -> 0x0113 }
        r4 = com.google.android.gms.ads.internal.ar.e();	 Catch:{ all -> 0x0105 }
        r5 = 0;
        r4.a(r14, r15, r5, r2);	 Catch:{ all -> 0x0105 }
        r4 = android.text.TextUtils.isEmpty(r17);	 Catch:{ all -> 0x0105 }
        if (r4 != 0) goto L_0x005c;
    L_0x0054:
        r4 = "x-afma-drt-cookie";
        r0 = r17;
        r2.addRequestProperty(r4, r0);	 Catch:{ all -> 0x0105 }
    L_0x005c:
        r4 = android.text.TextUtils.isEmpty(r18);	 Catch:{ all -> 0x0105 }
        if (r4 != 0) goto L_0x007e;
    L_0x0062:
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0105 }
        r4.<init>();	 Catch:{ all -> 0x0105 }
        r5 = "Bearer ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x0105 }
        r0 = r18;
        r4 = r4.append(r0);	 Catch:{ all -> 0x0105 }
        r4 = r4.toString();	 Catch:{ all -> 0x0105 }
        r5 = "Authorization";
        r2.addRequestProperty(r5, r4);	 Catch:{ all -> 0x0105 }
    L_0x007e:
        if (r19 == 0) goto L_0x00aa;
    L_0x0080:
        r4 = r19.c();	 Catch:{ all -> 0x0105 }
        r4 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x0105 }
        if (r4 != 0) goto L_0x00aa;
    L_0x008a:
        r4 = 1;
        r2.setDoOutput(r4);	 Catch:{ all -> 0x0105 }
        r4 = r19.c();	 Catch:{ all -> 0x0105 }
        r9 = r4.getBytes();	 Catch:{ all -> 0x0105 }
        r4 = r9.length;	 Catch:{ all -> 0x0105 }
        r2.setFixedLengthStreamingMode(r4);	 Catch:{ all -> 0x0105 }
        r5 = 0;
        r4 = new java.io.BufferedOutputStream;	 Catch:{ all -> 0x00ff }
        r12 = r2.getOutputStream();	 Catch:{ all -> 0x00ff }
        r4.<init>(r12);	 Catch:{ all -> 0x00ff }
        r4.write(r9);	 Catch:{ all -> 0x01da }
        com.google.android.gms.internal.vq.a(r4);	 Catch:{ all -> 0x0105 }
    L_0x00aa:
        r9 = r2.getResponseCode();	 Catch:{ all -> 0x0105 }
        r12 = r2.getHeaderFields();	 Catch:{ all -> 0x0105 }
        r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r9 < r4) goto L_0x013c;
    L_0x00b6:
        r4 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r9 >= r4) goto L_0x013c;
    L_0x00ba:
        r6 = r7.toString();	 Catch:{ all -> 0x0105 }
        r5 = 0;
        r4 = new java.io.InputStreamReader;	 Catch:{ all -> 0x0136 }
        r7 = r2.getInputStream();	 Catch:{ all -> 0x0136 }
        r4.<init>(r7);	 Catch:{ all -> 0x0136 }
        r5 = com.google.android.gms.ads.internal.ar.e();	 Catch:{ all -> 0x01d7 }
        r5 = r5.a(r4);	 Catch:{ all -> 0x01d7 }
        com.google.android.gms.internal.vq.a(r4);	 Catch:{ all -> 0x0105 }
        a(r6, r12, r5, r9);	 Catch:{ all -> 0x0105 }
        r8.a(r6, r12, r5);	 Catch:{ all -> 0x0105 }
        if (r20 == 0) goto L_0x00e9;
    L_0x00db:
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ all -> 0x0105 }
        r5 = 0;
        r6 = "ufe";
        r4[r5] = r6;	 Catch:{ all -> 0x0105 }
        r0 = r20;
        r0.a(r3, r4);	 Catch:{ all -> 0x0105 }
    L_0x00e9:
        r3 = r8.a(r10);	 Catch:{ all -> 0x0105 }
        r2.disconnect();	 Catch:{ IOException -> 0x0113 }
        if (r21 == 0) goto L_0x00f9;
    L_0x00f2:
        r0 = r21;
        r2 = r0.h;	 Catch:{ IOException -> 0x0113 }
        r2.b();	 Catch:{ IOException -> 0x0113 }
    L_0x00f9:
        r2 = r3;
    L_0x00fa:
        return r2;
    L_0x00fb:
        r2 = 0;
        r3 = r2;
        goto L_0x0007;
    L_0x00ff:
        r3 = move-exception;
        r4 = r5;
    L_0x0101:
        com.google.android.gms.internal.vq.a(r4);	 Catch:{ all -> 0x0105 }
        throw r3;	 Catch:{ all -> 0x0105 }
    L_0x0105:
        r3 = move-exception;
        r2.disconnect();	 Catch:{ IOException -> 0x0113 }
        if (r21 == 0) goto L_0x0112;
    L_0x010b:
        r0 = r21;
        r2 = r0.h;	 Catch:{ IOException -> 0x0113 }
        r2.b();	 Catch:{ IOException -> 0x0113 }
    L_0x0112:
        throw r3;	 Catch:{ IOException -> 0x0113 }
    L_0x0113:
        r2 = move-exception;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Error while connecting to ad server: ";
        r3 = r3.append(r4);
        r2 = r2.getMessage();
        r2 = r3.append(r2);
        r2 = r2.toString();
        com.google.android.gms.ads.internal.util.client.b.d(r2);
        r2 = new com.google.android.gms.ads.internal.request.AdResponseParcel;
        r3 = 2;
        r2.<init>(r3);
        goto L_0x00fa;
    L_0x0136:
        r3 = move-exception;
        r4 = r5;
    L_0x0138:
        com.google.android.gms.internal.vq.a(r4);	 Catch:{ all -> 0x0105 }
        throw r3;	 Catch:{ all -> 0x0105 }
    L_0x013c:
        r4 = r7.toString();	 Catch:{ all -> 0x0105 }
        r5 = 0;
        a(r4, r12, r5, r9);	 Catch:{ all -> 0x0105 }
        r4 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r9 < r4) goto L_0x0198;
    L_0x0148:
        r4 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r9 >= r4) goto L_0x0198;
    L_0x014c:
        r4 = "Location";
        r4 = r2.getHeaderField(r4);	 Catch:{ all -> 0x0105 }
        r5 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x0105 }
        if (r5 == 0) goto L_0x0173;
    L_0x0159:
        r3 = "No location header to follow redirect.";
        com.google.android.gms.ads.internal.util.client.b.d(r3);	 Catch:{ all -> 0x0105 }
        r3 = new com.google.android.gms.ads.internal.request.AdResponseParcel;	 Catch:{ all -> 0x0105 }
        r4 = 0;
        r3.<init>(r4);	 Catch:{ all -> 0x0105 }
        r2.disconnect();	 Catch:{ IOException -> 0x0113 }
        if (r21 == 0) goto L_0x0171;
    L_0x016a:
        r0 = r21;
        r2 = r0.h;	 Catch:{ IOException -> 0x0113 }
        r2.b();	 Catch:{ IOException -> 0x0113 }
    L_0x0171:
        r2 = r3;
        goto L_0x00fa;
    L_0x0173:
        r5 = new java.net.URL;	 Catch:{ all -> 0x0105 }
        r5.<init>(r4);	 Catch:{ all -> 0x0105 }
        r4 = r6 + 1;
        r6 = 5;
        if (r4 <= r6) goto L_0x01c4;
    L_0x017d:
        r3 = "Too many redirects.";
        com.google.android.gms.ads.internal.util.client.b.d(r3);	 Catch:{ all -> 0x0105 }
        r3 = new com.google.android.gms.ads.internal.request.AdResponseParcel;	 Catch:{ all -> 0x0105 }
        r4 = 0;
        r3.<init>(r4);	 Catch:{ all -> 0x0105 }
        r2.disconnect();	 Catch:{ IOException -> 0x0113 }
        if (r21 == 0) goto L_0x0195;
    L_0x018e:
        r0 = r21;
        r2 = r0.h;	 Catch:{ IOException -> 0x0113 }
        r2.b();	 Catch:{ IOException -> 0x0113 }
    L_0x0195:
        r2 = r3;
        goto L_0x00fa;
    L_0x0198:
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0105 }
        r3.<init>();	 Catch:{ all -> 0x0105 }
        r4 = "Received error HTTP response code: ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x0105 }
        r3 = r3.append(r9);	 Catch:{ all -> 0x0105 }
        r3 = r3.toString();	 Catch:{ all -> 0x0105 }
        com.google.android.gms.ads.internal.util.client.b.d(r3);	 Catch:{ all -> 0x0105 }
        r3 = new com.google.android.gms.ads.internal.request.AdResponseParcel;	 Catch:{ all -> 0x0105 }
        r4 = 0;
        r3.<init>(r4);	 Catch:{ all -> 0x0105 }
        r2.disconnect();	 Catch:{ IOException -> 0x0113 }
        if (r21 == 0) goto L_0x01c1;
    L_0x01ba:
        r0 = r21;
        r2 = r0.h;	 Catch:{ IOException -> 0x0113 }
        r2.b();	 Catch:{ IOException -> 0x0113 }
    L_0x01c1:
        r2 = r3;
        goto L_0x00fa;
    L_0x01c4:
        r8.a(r12);	 Catch:{ all -> 0x0105 }
        r2.disconnect();	 Catch:{ IOException -> 0x0113 }
        if (r21 == 0) goto L_0x01d3;
    L_0x01cc:
        r0 = r21;
        r2 = r0.h;	 Catch:{ IOException -> 0x0113 }
        r2.b();	 Catch:{ IOException -> 0x0113 }
    L_0x01d3:
        r6 = r4;
        r7 = r5;
        goto L_0x0037;
    L_0x01d7:
        r3 = move-exception;
        goto L_0x0138;
    L_0x01da:
        r3 = move-exception;
        goto L_0x0101;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ok.a(com.google.android.gms.ads.internal.request.AdRequestInfoParcel, android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.google.android.gms.internal.pa, com.google.android.gms.internal.cy, com.google.android.gms.internal.oj):com.google.android.gms.ads.internal.request.AdResponseParcel");
    }

    public static ok a(Context context, bx bxVar, oj ojVar) {
        ok okVar;
        synchronized (a) {
            if (b == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                b = new ok(context, bxVar, ojVar);
            }
            okVar = b;
        }
        return okVar;
    }

    private static void a(String str, Map<String, List<String>> map, String str2, int i) {
        if (b.a(2)) {
            qd.e("Http Response: {\n  URL:\n    " + str + "\n  Headers:");
            if (map != null) {
                for (String str3 : map.keySet()) {
                    qd.e("    " + str3 + ":");
                    for (String str32 : (List) map.get(str32)) {
                        qd.e("      " + str32);
                    }
                }
            }
            qd.e("  Body:");
            if (str2 != null) {
                for (int i2 = 0; i2 < Math.min(str2.length(), 100000); i2 += 1000) {
                    qd.e(str2.substring(i2, Math.min(str2.length(), i2 + 1000)));
                }
            } else {
                qd.e("    null");
            }
            qd.e("  Response Code:\n    " + i + "\n}");
        }
    }

    private static tc b(String str, cy cyVar, cu cuVar) {
        return new or(cyVar, cuVar, str);
    }

    public AdResponseParcel a(AdRequestInfoParcel adRequestInfoParcel) {
        return a(this.c, this.f, this.e, this.d, adRequestInfoParcel);
    }

    public void a(AdRequestInfoParcel adRequestInfoParcel, x xVar) {
        ar.h().a(this.c, adRequestInfoParcel.k);
        qq.a(new ot(this, adRequestInfoParcel, xVar));
    }
}
