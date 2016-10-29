package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.search.a;
import com.google.android.gms.internal.oi;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@oi
public class v {
    public static final v a;

    static {
        a = new v();
    }

    protected v() {
    }

    public static v a() {
        return a;
    }

    public AdRequestParcel a(Context context, b bVar) {
        Date a = bVar.a();
        long time = a != null ? a.getTime() : -1;
        String b = bVar.b();
        int c = bVar.c();
        Collection d = bVar.d();
        List unmodifiableList = !d.isEmpty() ? Collections.unmodifiableList(new ArrayList(d)) : null;
        boolean a2 = bVar.a(context);
        int l = bVar.l();
        Location e = bVar.e();
        Bundle a3 = bVar.a(AdMobAdapter.class);
        boolean f = bVar.f();
        String g = bVar.g();
        a i = bVar.i();
        SearchAdRequestParcel searchAdRequestParcel = i != null ? new SearchAdRequestParcel(i) : null;
        String str = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            str = aa.a().a(Thread.currentThread().getStackTrace(), applicationContext.getPackageName());
        }
        return new AdRequestParcel(7, time, a3, c, unmodifiableList, a2, l, f, g, searchAdRequestParcel, e, b, bVar.k(), bVar.m(), Collections.unmodifiableList(new ArrayList(bVar.n())), bVar.h(), str, bVar.o());
    }
}
