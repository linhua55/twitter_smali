package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import java.util.Map;

@oi
public abstract class cq {
    @oi
    public static final cq a;
    @oi
    public static final cq b;
    @oi
    public static final cq c;

    static {
        a = new cr();
        b = new cs();
        c = new ct();
    }

    public abstract String a(@Nullable String str, String str2);

    public final void a(Map<String, String> map, String str, String str2) {
        map.put(str, a((String) map.get(str), str2));
    }
}
