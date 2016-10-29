package com.google.android.gms.common.stats;

import com.google.android.gms.internal.us;

public final class e {
    public static us<Integer> a;
    public static us<Long> b;

    static {
        a = us.a("gms:common:stats:wakeLocks:level", Integer.valueOf(f.b));
        b = us.a("gms:common:stats:wakelocks:time_out_duration", Long.valueOf(600000));
    }
}
