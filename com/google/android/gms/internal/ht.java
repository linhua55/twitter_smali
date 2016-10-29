package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.common.internal.bm;
import java.util.LinkedList;

@oi
class ht {
    private final LinkedList<hu> a;
    private AdRequestParcel b;
    private final String c;
    private final int d;

    ht(AdRequestParcel adRequestParcel, String str, int i) {
        bm.a((Object) adRequestParcel);
        bm.a((Object) str);
        this.a = new LinkedList();
        this.b = adRequestParcel;
        this.c = str;
        this.d = i;
    }

    AdRequestParcel a() {
        return this.b;
    }

    void a(gm gmVar) {
        hu huVar = new hu(this, gmVar);
        this.a.add(huVar);
        huVar.a(this.b);
    }

    int b() {
        return this.d;
    }

    String c() {
        return this.c;
    }

    hu d() {
        return (hu) this.a.remove();
    }

    int e() {
        return this.a.size();
    }
}
