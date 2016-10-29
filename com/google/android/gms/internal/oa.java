package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.c;
import java.util.List;

class oa implements sl<List<c>, a> {
    final /* synthetic */ String a;
    final /* synthetic */ Integer b;
    final /* synthetic */ Integer c;
    final /* synthetic */ int d;
    final /* synthetic */ int e;
    final /* synthetic */ int f;
    final /* synthetic */ nw g;

    oa(nw nwVar, String str, Integer num, Integer num2, int i, int i2, int i3) {
        this.g = nwVar;
        this.a = str;
        this.b = num;
        this.c = num2;
        this.d = i;
        this.e = i2;
        this.f = i3;
    }

    public a a(List<c> list) {
        a aVar;
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    aVar = new a(this.a, nw.a(list), this.b, this.c, this.d > 0 ? Integer.valueOf(this.d) : null, this.e + this.f);
                    return aVar;
                }
            } catch (Throwable e) {
                qd.b("Could not get attribution icon", e);
                return null;
            }
        }
        aVar = null;
        return aVar;
    }

    public /* synthetic */ Object a(Object obj) {
        return a((List) obj);
    }
}
