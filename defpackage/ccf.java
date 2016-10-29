package defpackage;

import cdg;

/* compiled from: Twttr */
/* renamed from: ccf */
public class ccf {
    public static final String[] a;
    public static final int b;
    public static final int c;
    public static final int d;
    public static final int e;
    public static final int f;
    public static final int g;
    public static final int h;
    public static final int i;

    static {
        b = cdg.a.length;
        c = cdg.a.length + 1;
        d = cdg.a.length + 2;
        e = cdg.a.length + 3;
        f = cdg.a.length + 4;
        g = cdg.a.length + 5;
        h = cdg.a.length + 6;
        i = cdg.a.length + 7;
        a = new String[(cdg.a.length + 8)];
        System.arraycopy(cdg.a, 0, a, 0, cdg.a.length);
        a[b] = "ads_ad_id";
        a[c] = "ads_type";
        a[d] = "ads_slot_id";
        a[e] = "ads_assigned_slot_id";
        a[f] = "ads_sort_index";
        a[g] = "ads_expiration_interval_secs";
        a[h] = "ads_last_seen_timestamp";
        a[i] = "ads_created_at";
    }
}
