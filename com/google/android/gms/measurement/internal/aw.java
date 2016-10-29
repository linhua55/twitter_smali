package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.internal.us;

public final class aw<V> {
    private final V a;
    private final us<V> b;
    private V c;
    private final String d;

    private aw(String str, us<V> usVar, V v) {
        bm.a(usVar);
        this.b = usVar;
        this.a = v;
        this.d = str;
    }

    static aw<Integer> a(String str, int i) {
        return a(str, i, i);
    }

    static aw<Integer> a(String str, int i, int i2) {
        return new aw(str, us.a(str, Integer.valueOf(i2)), Integer.valueOf(i));
    }

    static aw<Long> a(String str, long j) {
        return a(str, j, j);
    }

    static aw<Long> a(String str, long j, long j2) {
        return new aw(str, us.a(str, Long.valueOf(j2)), Long.valueOf(j));
    }

    static aw<String> a(String str, String str2) {
        return a(str, str2, str2);
    }

    static aw<String> a(String str, String str2, String str3) {
        return new aw(str, us.a(str, str3), str2);
    }

    static aw<Boolean> a(String str, boolean z) {
        return a(str, z, z);
    }

    static aw<Boolean> a(String str, boolean z, boolean z2) {
        return new aw(str, us.a(str, z2), Boolean.valueOf(z));
    }

    public V a(V v) {
        return this.c != null ? this.c : v == null ? (i.a && us.b()) ? this.b.d() : this.a : v;
    }

    public String a() {
        return this.d;
    }

    public V b() {
        return this.c != null ? this.c : (i.a && us.b()) ? this.b.d() : this.a;
    }
}
