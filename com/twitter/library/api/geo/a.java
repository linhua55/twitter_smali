package com.twitter.library.api.geo;

import android.content.Context;
import android.location.LocationManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.support.annotation.VisibleForTesting;
import bvs;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.platform.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.util.au;
import com.twitter.model.geo.d;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.Map.Entry;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class a extends b<as> {
    public static final boolean a;
    @VisibleForTesting
    static final long b;
    private String c;
    private String g;
    private List<e> h;
    private d i;
    private b j;

    protected /* synthetic */ c f() {
        return b();
    }

    static {
        boolean z;
        if (VERSION.SDK_INT >= 17) {
            z = true;
        } else {
            z = false;
        }
        a = z;
        b = TimeUnit.MINUTES.toMillis(2);
    }

    public a(Context context, Session session) {
        super(context, a.class.getName(), session);
        this.h = n.g();
        h(1);
    }

    protected as b() {
        return as.a(91);
    }

    protected com.twitter.library.service.d a() {
        com.twitter.library.service.e a = K().a("geo", "places");
        if (aj.b(this.g)) {
            a.a("query_type", this.g);
        }
        if (aj.b(this.c)) {
            a.a("search_term", this.c);
        }
        a(a);
        return a.a();
    }

    public a a(String str) {
        this.g = str;
        return this;
    }

    public String e() {
        return this.c;
    }

    public a b(String str) {
        this.c = str;
        return this;
    }

    public d g() {
        return this.i;
    }

    public a a(d dVar) {
        this.i = dVar;
        return this;
    }

    public a a(List<e> list) {
        this.h = n.a(list);
        return this;
    }

    public b h() {
        return this.j;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            this.j = (b) asVar.b();
        }
    }

    private void a(com.twitter.library.service.e eVar) {
        if (com.twitter.config.d.a("place_picker_new_data_provider") && aj.a(this.g, "tweet_compose_location")) {
            eVar.a(RequestMethod.b);
            boolean isWifiEnabled = ((WifiManager) this.p.getSystemService("wifi")).isWifiEnabled();
            eVar.a("wifi_on", isWifiEnabled);
            LocationManager locationManager = (LocationManager) this.p.getSystemService("location");
            eVar.a("gps_assistance", locationManager.isProviderEnabled("gps"));
            eVar.a("network_assistance", locationManager.isProviderEnabled("network"));
            eVar.a("os", "Android " + VERSION.RELEASE);
            eVar.a("device_type", Build.MODEL);
            if (isWifiEnabled && a && bvs.a().c()) {
                for (Entry entry : au.a(au.a(au.a(this.h, b), 20)).entrySet()) {
                    eVar.a((String) entry.getKey(), entry.getValue().toString());
                }
            }
            if (this.i != null && bvs.a().b()) {
                eVar.a("lat", this.i.a());
                eVar.a("lon", this.i.b());
            }
        }
    }
}
