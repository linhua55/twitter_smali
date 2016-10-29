package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.support.v7.recyclerview.BuildConfig;
import android.util.Base64;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;

@oi
public class ho {
    private final Map<hp, ht> a;
    private final LinkedList<hp> b;
    private gm c;

    public ho() {
        this.a = new HashMap();
        this.b = new LinkedList();
    }

    private static void a(String str, hp hpVar) {
        if (b.a(2)) {
            qd.e(String.format(str, new Object[]{hpVar}));
        }
    }

    private String[] a(String str) {
        try {
            String[] split = str.split("\u0000");
            for (int i = 0; i < split.length; i++) {
                split[i] = new String(Base64.decode(split[i], 0), "UTF-8");
            }
            return split;
        } catch (UnsupportedEncodingException e) {
            return new String[0];
        }
    }

    private String e() {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                stringBuilder.append(Base64.encodeToString(((hp) it.next()).toString().getBytes("UTF-8"), 0));
                if (it.hasNext()) {
                    stringBuilder.append("\u0000");
                }
            }
            return stringBuilder.toString();
        } catch (UnsupportedEncodingException e) {
            return BuildConfig.VERSION_NAME;
        }
    }

    hu a(AdRequestParcel adRequestParcel, String str) {
        ht htVar;
        int i = new pc(this.c.b()).a().m;
        hp hpVar = new hp(adRequestParcel, str, i);
        ht htVar2 = (ht) this.a.get(hpVar);
        if (htVar2 == null) {
            a("Interstitial pool created at %s.", hpVar);
            htVar2 = new ht(adRequestParcel, str, i);
            this.a.put(hpVar, htVar2);
            htVar = htVar2;
        } else {
            htVar = htVar2;
        }
        this.b.remove(hpVar);
        this.b.add(hpVar);
        hpVar.a();
        while (this.b.size() > ((Integer) cj.ag.c()).intValue()) {
            hp hpVar2 = (hp) this.b.remove();
            ht htVar3 = (ht) this.a.get(hpVar2);
            a("Evicting interstitial queue for %s.", hpVar2);
            while (htVar3.e() > 0) {
                htVar3.d().a.D();
            }
            this.a.remove(hpVar2);
        }
        while (htVar.e() > 0) {
            hu d = htVar.d();
            if (!d.e || ar.i().a() - d.d <= 1000 * ((long) ((Integer) cj.ai.c()).intValue())) {
                a("Pooled interstitial returned at %s.", hpVar);
                return d;
            }
            a("Expired interstitial at %s.", hpVar);
        }
        return null;
    }

    void a() {
        if (this.c != null) {
            for (Entry entry : this.a.entrySet()) {
                hp hpVar = (hp) entry.getKey();
                ht htVar = (ht) entry.getValue();
                while (htVar.e() < ((Integer) cj.ah.c()).intValue()) {
                    a("Pooling one interstitial for %s.", hpVar);
                    htVar.a(this.c);
                }
            }
            b();
        }
    }

    void a(gm gmVar) {
        if (this.c == null) {
            this.c = gmVar;
            c();
        }
    }

    void b() {
        if (this.c != null) {
            Editor edit = this.c.b().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0).edit();
            edit.clear();
            for (Entry entry : this.a.entrySet()) {
                hp hpVar = (hp) entry.getKey();
                if (hpVar.b()) {
                    edit.putString(hpVar.toString(), new hw((ht) entry.getValue()).a());
                    a("Saved interstitial queue for %s.", hpVar);
                }
            }
            edit.putString("PoolKeys", e());
            edit.commit();
        }
    }

    void c() {
        Throwable e;
        if (this.c != null) {
            hp hpVar;
            SharedPreferences sharedPreferences = this.c.b().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0);
            d();
            Map hashMap = new HashMap();
            for (Entry entry : sharedPreferences.getAll().entrySet()) {
                try {
                    if (!((String) entry.getKey()).equals("PoolKeys")) {
                        hw hwVar = new hw((String) entry.getValue());
                        hpVar = new hp(hwVar.a, hwVar.b, hwVar.c);
                        if (!this.a.containsKey(hpVar)) {
                            this.a.put(hpVar, new ht(hwVar.a, hwVar.b, hwVar.c));
                            hashMap.put(hpVar.toString(), hpVar);
                            a("Restored interstitial queue for %s.", hpVar);
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    b.d("Malformed preferences value for InterstitialAdPool.", e);
                } catch (ClassCastException e3) {
                    e = e3;
                    b.d("Malformed preferences value for InterstitialAdPool.", e);
                }
            }
            for (Object obj : a(sharedPreferences.getString("PoolKeys", BuildConfig.VERSION_NAME))) {
                hpVar = (hp) hashMap.get(obj);
                if (this.a.containsKey(hpVar)) {
                    this.b.add(hpVar);
                }
            }
        }
    }

    void d() {
        while (this.b.size() > 0) {
            hp hpVar = (hp) this.b.remove();
            ht htVar = (ht) this.a.get(hpVar);
            a("Flushing interstitial queue for %s.", hpVar);
            while (htVar.e() > 0) {
                htVar.d().a.D();
            }
            this.a.remove(hpVar);
        }
    }
}
