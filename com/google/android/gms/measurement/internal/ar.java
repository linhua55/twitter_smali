package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bm;
import java.util.Iterator;

public class ar {
    final String a;
    final String b;
    final String c;
    final long d;
    final long e;
    final EventParams f;

    ar(bx bxVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        bm.a(str2);
        bm.a(str3);
        this.a = str2;
        this.b = str3;
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.c = str;
        this.d = j;
        this.e = j2;
        if (this.e != 0 && this.e > this.d) {
            bxVar.f().c().a("Event created with reverse previous/current timestamps");
        }
        this.f = a(bxVar, bundle);
    }

    private ar(bx bxVar, String str, String str2, String str3, long j, long j2, EventParams eventParams) {
        bm.a(str2);
        bm.a(str3);
        bm.a(eventParams);
        this.a = str2;
        this.b = str3;
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.c = str;
        this.d = j;
        this.e = j2;
        if (this.e != 0 && this.e > this.d) {
            bxVar.f().c().a("Event created with reverse previous/current timestamps");
        }
        this.f = eventParams;
    }

    private EventParams a(bx bxVar, Bundle bundle) {
        if (bundle == null || bundle.isEmpty()) {
            return new EventParams(new Bundle());
        }
        Bundle bundle2 = new Bundle(bundle);
        Iterator it = bundle2.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                it.remove();
            } else {
                Object a = bxVar.m().a(str, bundle2.get(str));
                if (a == null) {
                    it.remove();
                } else {
                    bxVar.m().a(bundle2, str, a);
                }
            }
        }
        return new EventParams(bundle2);
    }

    ar a(bx bxVar, long j) {
        return new ar(bxVar, this.c, this.a, this.b, this.d, j, this.f);
    }

    public String toString() {
        return "Event{appId='" + this.a + '\'' + ", name='" + this.b + '\'' + ", params=" + this.f + '}';
    }
}
