package com.google.android.gms.common.stats;

import com.google.android.gms.internal.us;

public final class c {
    public static us<Integer> a;
    public static us<Integer> b;

    static {
        a = us.a("gms:common:stats:max_num_of_events", Integer.valueOf(100));
        b = us.a("gms:common:stats:max_chunk_size", Integer.valueOf(100));
    }
}
