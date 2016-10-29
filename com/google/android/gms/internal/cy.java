package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@oi
public class cy {
    boolean a;
    private final List<cu> b;
    private final Map<String, String> c;
    private final Object d;
    private String e;
    private cu f;
    private cy g;

    public cy(boolean z, String str, String str2) {
        this.b = new LinkedList();
        this.c = new LinkedHashMap();
        this.d = new Object();
        this.a = z;
        this.c.put("action", str);
        this.c.put("ad_format", str2);
    }

    public cu a() {
        return a(ar.i().b());
    }

    public cu a(long j) {
        return !this.a ? null : new cu(j, null, null);
    }

    public void a(cy cyVar) {
        synchronized (this.d) {
            this.g = cyVar;
        }
    }

    public void a(String str) {
        if (this.a) {
            synchronized (this.d) {
                this.e = str;
            }
        }
    }

    public void a(String str, String str2) {
        if (this.a && !TextUtils.isEmpty(str2)) {
            cm e = ar.h().e();
            if (e != null) {
                synchronized (this.d) {
                    e.a(str).a(this.c, str, str2);
                }
            }
        }
    }

    public boolean a(cu cuVar, long j, String... strArr) {
        synchronized (this.d) {
            for (String cuVar2 : strArr) {
                this.b.add(new cu(j, cuVar2, cuVar));
            }
        }
        return true;
    }

    public boolean a(cu cuVar, String... strArr) {
        return (!this.a || cuVar == null) ? false : a(cuVar, ar.i().b(), strArr);
    }

    public void b() {
        synchronized (this.d) {
            this.f = a();
        }
    }

    public String c() {
        String stringBuilder;
        StringBuilder stringBuilder2 = new StringBuilder();
        synchronized (this.d) {
            for (cu cuVar : this.b) {
                long a = cuVar.a();
                String b = cuVar.b();
                cu cuVar2 = cuVar2.c();
                if (cuVar2 != null && a > 0) {
                    stringBuilder2.append(b).append('.').append(a - cuVar2.a()).append(',');
                }
            }
            this.b.clear();
            if (!TextUtils.isEmpty(this.e)) {
                stringBuilder2.append(this.e);
            } else if (stringBuilder2.length() > 0) {
                stringBuilder2.setLength(stringBuilder2.length() - 1);
            }
            stringBuilder = stringBuilder2.toString();
        }
        return stringBuilder;
    }

    Map<String, String> d() {
        Map<String, String> map;
        synchronized (this.d) {
            cm e = ar.h().e();
            if (e == null || this.g == null) {
                map = this.c;
            } else {
                map = e.a(this.c, this.g.d());
            }
        }
        return map;
    }

    public cu e() {
        cu cuVar;
        synchronized (this.d) {
            cuVar = this.f;
        }
        return cuVar;
    }
}
