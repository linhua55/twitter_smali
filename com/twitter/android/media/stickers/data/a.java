package com.twitter.android.media.stickers.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.v4.util.LongSparseArray;
import aop;
import aov;
import byc;
import cjw;
import ckb;
import com.twitter.config.d;
import com.twitter.library.client.az;
import com.twitter.library.provider.di;
import com.twitter.util.al;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import defpackage.cka;
import defpackage.ckp;
import defpackage.ckr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class a extends aop<cka> {
    private final Context a;
    private final long b;
    private final int c;
    private final StickerLruCache d;
    private final SharedPreferences e;
    private final String f;

    public a(Context context, long j, byc byc) {
        this.a = context.getApplicationContext();
        this.b = j;
        this.c = byc.a;
        this.e = PreferenceManager.getDefaultSharedPreferences(context);
        this.f = Long.toString(this.b) + ':';
        this.d = new StickerLruCache(140, "recently_used_stickers", j, this.e);
    }

    public void a(aov<cka> aov_cka) {
        super.a(aov_cka);
        a();
    }

    public void a() {
        if (c()) {
            e();
        } else {
            f();
        }
    }

    public void a(cjw cjw) {
        this.d.a(Long.valueOf(cjw.h));
    }

    private boolean c() {
        return PreferenceManager.getDefaultSharedPreferences(this.a).getLong(new StringBuilder().append(this.f).append("last_stickers_db_update").toString(), 0) > al.b() - TimeUnit.SECONDS.toMillis(d.a("photo_stickers_featured_category_refresh_rate", 86400000));
    }

    private void d() {
        PreferenceManager.getDefaultSharedPreferences(this.a).edit().putLong(this.f + "last_stickers_db_update", al.b()).apply();
    }

    private void e() {
        az a = az.a(this.a);
        e eVar = new e(di.a(this.a, this.b), this.d.a(), this.f, this.e);
        eVar.a(new b(this));
        a.a(eVar);
    }

    private void f() {
        az a = az.a(this.a);
        a.a(new f(this.a, this.c), new c(this, a));
    }

    private static List<ckr> b(Map<Long, cjw> map, LongSparseArray<HashMap<Long, cjw>> longSparseArray, LongSparseArray<Long> longSparseArray2) {
        n a = n.a(map.size());
        for (cjw cjw : map.values()) {
            Object ckr;
            long j = cjw.h;
            Map a2 = e.a((Map) longSparseArray.get(j));
            List arrayList = new ArrayList(a2.values());
            Long l = (Long) longSparseArray2.get(j);
            if (l == null || l.longValue() == 0) {
                ckr ckr2 = new ckr(cjw, arrayList);
            } else {
                ckr = new ckr((cjw) a2.get(l), arrayList);
            }
            a.c(ckr);
        }
        return (List) a.q();
    }

    private static ckp b(LongSparseArray<cjw> longSparseArray, Set<Long> set) {
        n a = n.a(set.size());
        for (Long longValue : set) {
            cjw cjw = (cjw) longSparseArray.get(longValue.longValue());
            if (cjw != null) {
                a.c(new ckr(cjw, n.g()));
            }
        }
        return new ckp(0, 0, (List) a.q(), "recently_used", new ckb(Size.b, TtmlNode.ANONYMOUS_REGION_ID, "none"), 1, false);
    }

    private static cka b(cka cka, Set<Long> set) {
        LongSparseArray longSparseArray = new LongSparseArray(set.size());
        a(cka.a, (Set) set, longSparseArray);
        a(cka.b, (Set) set, longSparseArray);
        ckp b = b(longSparseArray, (Set) set);
        n d = n.d();
        d.c(b);
        d.c(cka.a);
        return new cka((List) d.q(), cka.b);
    }

    private static void a(List<ckp> list, Set<Long> set, LongSparseArray<cjw> longSparseArray) {
        for (ckp ckp : list) {
            for (ckr ckr : ckp.f) {
                cjw a = ckr.a();
                if (set.contains(Long.valueOf(a.h))) {
                    longSparseArray.put(a.h, a);
                } else {
                    for (cjw cjw : ckr.a) {
                        if (set.contains(Long.valueOf(cjw.h))) {
                            longSparseArray.put(cjw.h, cjw);
                        }
                    }
                }
            }
        }
    }

    private static LongSparseArray<Long> b(SharedPreferences sharedPreferences, String str) {
        Set<String> stringSet = sharedPreferences.getStringSet(str + "stickers_primary_variant_list", new HashSet());
        LongSparseArray<Long> longSparseArray = new LongSparseArray(stringSet.size());
        for (String valueOf : stringSet) {
            long longValue = Long.valueOf(valueOf, 36).longValue();
            longSparseArray.put(longValue, Long.valueOf(sharedPreferences.getLong(str + "stickers_primary_variant_" + longValue, 0)));
        }
        return longSparseArray;
    }

    private static n<ckp> a(List<ckp> list, LongSparseArray<Long> longSparseArray, boolean z) {
        n<ckp> d = n.d();
        for (ckp ckp : list) {
            Map linkedHashMap = new LinkedHashMap();
            LongSparseArray longSparseArray2 = new LongSparseArray();
            for (ckr ckr : ckp.f) {
                cjw a = ckr.a();
                long j = a.h;
                linkedHashMap.put(Long.valueOf(j), a);
                for (cjw cjw : ckr.a) {
                    long j2 = cjw.h;
                    HashMap hashMap = (HashMap) longSparseArray2.get(j);
                    if (hashMap == null) {
                        hashMap = new LinkedHashMap();
                        hashMap.put(Long.valueOf(j), a);
                        longSparseArray2.put(j, hashMap);
                    }
                    hashMap.put(Long.valueOf(j2), cjw);
                }
            }
            d.c(new ckp(ckp.a, ckp.b, b(linkedHashMap, longSparseArray2, (LongSparseArray) longSparseArray), ckp.e, ckp.d, z ? 2 : 0, ckp.g));
        }
        return d;
    }

    private static cka b(cka cka, SharedPreferences sharedPreferences, String str) {
        LongSparseArray b = b(sharedPreferences, str);
        if (b.size() == 0) {
            return cka;
        }
        return new cka((List) a(cka.a, b, false).q(), (List) a(cka.b, b, true).q());
    }
}
