package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import ih;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

public final class c {
    private final HashSet<String> a;
    private final Bundle b;
    private final HashMap<Class<? extends Object>, Object> c;
    private final HashSet<String> d;
    private final Bundle e;
    private final HashSet<String> f;
    private Date g;
    private String h;
    private int i;
    private Location j;
    private boolean k;
    private String l;
    private String m;
    private int n;
    private boolean o;

    public c() {
        this.a = new HashSet();
        this.b = new Bundle();
        this.c = new HashMap();
        this.d = new HashSet();
        this.e = new Bundle();
        this.f = new HashSet();
        this.i = -1;
        this.k = false;
        this.n = -1;
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(Location location) {
        this.j = location;
    }

    public void a(Class<? extends ih> cls, Bundle bundle) {
        this.b.putBundle(cls.getName(), bundle);
    }

    public void a(String str) {
        this.a.add(str);
    }

    public void a(Date date) {
        this.g = date;
    }

    public void a(boolean z) {
        this.n = z ? 1 : 0;
    }

    public void b(String str) {
        this.d.add(str);
    }

    public void b(boolean z) {
        this.o = z;
    }

    public void c(String str) {
        this.d.remove(str);
    }
}
