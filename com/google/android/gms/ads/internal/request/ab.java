package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.bx;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fu;
import com.google.android.gms.internal.hx;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.iy;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.ou;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.qb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public class ab extends qb {
    static final long a;
    private static final Object b;
    private static boolean c;
    private static ik d;
    private static fk e;
    private static fu f;
    private static fj g;
    private final d h;
    private final a i;
    private final Object j;
    private final Context k;
    private iy l;

    static {
        a = TimeUnit.SECONDS.toMillis(10);
        b = new Object();
        c = false;
        d = null;
        e = null;
        f = null;
        g = null;
    }

    public ab(Context context, a aVar, d dVar) {
        super(true);
        this.j = new Object();
        this.h = dVar;
        this.k = context;
        this.i = aVar;
        synchronized (b) {
            if (!c) {
                f = new fu();
                e = new fk(context.getApplicationContext(), aVar.j);
                g = new aj();
                d = new ik(this.k.getApplicationContext(), this.i.j, (String) cj.b.c(), new ai(), new ah());
                c = true;
            }
        }
    }

    private AdResponseParcel a(AdRequestInfoParcel adRequestInfoParcel) {
        String uuid = UUID.randomUUID().toString();
        JSONObject a = a(adRequestInfoParcel, uuid);
        if (a == null) {
            return new AdResponseParcel(0);
        }
        long b = ar.i().b();
        Future a2 = f.a(uuid);
        a.a.post(new ad(this, a, uuid));
        try {
            JSONObject jSONObject = (JSONObject) a2.get(a - (ar.i().b() - b), TimeUnit.MILLISECONDS);
            if (jSONObject == null) {
                return new AdResponseParcel(-1);
            }
            AdResponseParcel a3 = ou.a(this.k, adRequestInfoParcel, jSONObject.toString());
            return (a3.e == -3 || !TextUtils.isEmpty(a3.c)) ? a3 : new AdResponseParcel(3);
        } catch (CancellationException e) {
            return new AdResponseParcel(-1);
        } catch (InterruptedException e2) {
            return new AdResponseParcel(-1);
        } catch (TimeoutException e3) {
            return new AdResponseParcel(2);
        } catch (ExecutionException e4) {
            return new AdResponseParcel(0);
        }
    }

    private JSONObject a(AdRequestInfoParcel adRequestInfoParcel, String str) {
        Info advertisingIdInfo;
        Throwable e;
        Map hashMap;
        JSONObject jSONObject = null;
        Bundle bundle = adRequestInfoParcel.c.c.getBundle("sdk_less_server_data");
        String string = adRequestInfoParcel.c.c.getString("sdk_less_network_id");
        if (bundle != null) {
            JSONObject a = ou.a(this.k, adRequestInfoParcel, ar.k().a(this.k), jSONObject, jSONObject, new bx((String) cj.b.c()), jSONObject, jSONObject, new ArrayList(), jSONObject);
            if (a != null) {
                try {
                    advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.k);
                } catch (IOException e2) {
                    e = e2;
                    b.d("Cannot get advertising id info", e);
                    advertisingIdInfo = jSONObject;
                    hashMap = new HashMap();
                    hashMap.put("request_id", str);
                    hashMap.put("network_id", string);
                    hashMap.put("request_param", a);
                    hashMap.put("data", bundle);
                    if (advertisingIdInfo != null) {
                        hashMap.put("adid", advertisingIdInfo.getId());
                        hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                    }
                    jSONObject = ar.e().a(hashMap);
                    return jSONObject;
                } catch (IllegalStateException e3) {
                    e = e3;
                    b.d("Cannot get advertising id info", e);
                    advertisingIdInfo = jSONObject;
                    hashMap = new HashMap();
                    hashMap.put("request_id", str);
                    hashMap.put("network_id", string);
                    hashMap.put("request_param", a);
                    hashMap.put("data", bundle);
                    if (advertisingIdInfo != null) {
                        hashMap.put("adid", advertisingIdInfo.getId());
                        if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                        }
                        hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                    }
                    jSONObject = ar.e().a(hashMap);
                    return jSONObject;
                } catch (GooglePlayServicesNotAvailableException e4) {
                    e = e4;
                    b.d("Cannot get advertising id info", e);
                    advertisingIdInfo = jSONObject;
                    hashMap = new HashMap();
                    hashMap.put("request_id", str);
                    hashMap.put("network_id", string);
                    hashMap.put("request_param", a);
                    hashMap.put("data", bundle);
                    if (advertisingIdInfo != null) {
                        hashMap.put("adid", advertisingIdInfo.getId());
                        if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                        }
                        hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                    }
                    jSONObject = ar.e().a(hashMap);
                    return jSONObject;
                } catch (GooglePlayServicesRepairableException e5) {
                    e = e5;
                    b.d("Cannot get advertising id info", e);
                    advertisingIdInfo = jSONObject;
                    hashMap = new HashMap();
                    hashMap.put("request_id", str);
                    hashMap.put("network_id", string);
                    hashMap.put("request_param", a);
                    hashMap.put("data", bundle);
                    if (advertisingIdInfo != null) {
                        hashMap.put("adid", advertisingIdInfo.getId());
                        if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                        }
                        hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                    }
                    jSONObject = ar.e().a(hashMap);
                    return jSONObject;
                }
                hashMap = new HashMap();
                hashMap.put("request_id", str);
                hashMap.put("network_id", string);
                hashMap.put("request_param", a);
                hashMap.put("data", bundle);
                if (advertisingIdInfo != null) {
                    hashMap.put("adid", advertisingIdInfo.getId());
                    if (advertisingIdInfo.isLimitAdTrackingEnabled()) {
                    }
                    hashMap.put("lat", Integer.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled() ? 0 : 1));
                }
                try {
                    jSONObject = ar.e().a(hashMap);
                } catch (JSONException e6) {
                }
            }
        }
        return jSONObject;
    }

    protected static void a(hx hxVar) {
        hxVar.a("/loadAd", f);
        hxVar.a("/fetchHttpRequest", e);
        hxVar.a("/invalidRequest", g);
    }

    protected static void b(hx hxVar) {
        hxVar.b("/loadAd", f);
        hxVar.b("/fetchHttpRequest", e);
        hxVar.b("/invalidRequest", g);
    }

    public void a() {
        b.a("SdkLessAdLoaderBackgroundTask started.");
        AdRequestInfoParcel adRequestInfoParcel = new AdRequestInfoParcel(this.i, null, -1);
        AdResponseParcel a = a(adRequestInfoParcel);
        AdSizeParcel adSizeParcel = null;
        a.a.post(new ac(this, new pt(adRequestInfoParcel, a, null, adSizeParcel, a.e, ar.i().b(), a.n, null)));
    }

    public void b() {
        synchronized (this.j) {
            a.a.post(new ag(this));
        }
    }
}
