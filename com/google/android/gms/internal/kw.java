package com.google.android.gms.internal;

import android.location.Location;
import android.support.annotation.Nullable;
import ig;
import java.util.Date;
import java.util.Set;

@oi
public final class kw implements ig {
    private final Date a;
    private final int b;
    private final Set<String> c;
    private final boolean d;
    private final Location e;
    private final int f;
    private final boolean g;

    public kw(@Nullable Date date, int i, @Nullable Set<String> set, @Nullable Location location, boolean z, int i2, boolean z2) {
        this.a = date;
        this.b = i;
        this.c = set;
        this.e = location;
        this.d = z;
        this.f = i2;
        this.g = z2;
    }

    public Date a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public Set<String> c() {
        return this.c;
    }

    public Location d() {
        return this.e;
    }

    public int e() {
        return this.f;
    }

    public boolean f() {
        return this.d;
    }

    public boolean g() {
        return this.g;
    }
}
