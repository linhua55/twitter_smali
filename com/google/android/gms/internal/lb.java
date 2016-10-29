package com.google.android.gms.internal;

import android.location.Location;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.formats.c;
import com.google.android.gms.ads.formats.e;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import is;
import java.util.Date;
import java.util.List;
import java.util.Set;

@oi
public final class lb implements is {
    private final Date a;
    private final int b;
    private final Set<String> c;
    private final boolean d;
    private final Location e;
    private final int f;
    private final NativeAdOptionsParcel g;
    private final List<String> h;
    private final boolean i;

    public lb(@Nullable Date date, int i, @Nullable Set<String> set, @Nullable Location location, boolean z, int i2, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list, boolean z2) {
        this.a = date;
        this.b = i;
        this.c = set;
        this.e = location;
        this.d = z;
        this.f = i2;
        this.g = nativeAdOptionsParcel;
        this.h = list;
        this.i = z2;
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
        return this.i;
    }

    public c h() {
        return this.g == null ? null : new e().a(this.g.b).a(this.g.c).b(this.g.d).a();
    }

    public boolean i() {
        return this.h != null && this.h.contains("2");
    }

    public boolean j() {
        return this.h != null && this.h.contains("1");
    }
}
