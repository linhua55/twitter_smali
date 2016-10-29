package com.google.android.gms.common.stats;

import com.google.android.gms.internal.us;

public final class d {
    public static us<Integer> a;
    public static us<String> b;
    public static us<String> c;
    public static us<String> d;
    public static us<String> e;
    public static us<Long> f;

    static {
        a = us.a("gms:common:stats:connections:level", Integer.valueOf(f.b));
        b = us.a("gms:common:stats:connections:ignored_calling_processes", TtmlNode.ANONYMOUS_REGION_ID);
        c = us.a("gms:common:stats:connections:ignored_calling_services", TtmlNode.ANONYMOUS_REGION_ID);
        d = us.a("gms:common:stats:connections:ignored_target_processes", TtmlNode.ANONYMOUS_REGION_ID);
        e = us.a("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
        f = us.a("gms:common:stats:connections:time_out_duration", Long.valueOf(600000));
    }
}
