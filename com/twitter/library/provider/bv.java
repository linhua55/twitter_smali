package com.twitter.library.provider;

import android.net.Uri;
import cdg;

/* compiled from: Twttr */
public final class bv {
    public static String[] A;
    public static final Uri a;
    public static final int b;
    public static final int c;
    public static final int d;
    public static final int e;
    public static final int f;
    public static final int g;
    public static final int h;
    public static final int i;
    public static final int j;
    public static final int k;
    public static final int l;
    public static final int m;
    public static final int n;
    public static final int o;
    public static final int p;
    public static final int q;
    public static final int r;
    public static final int s;
    public static final int t;
    public static final int u;
    public static final int v;
    public static final int w;
    public static final int x;
    public static final int y;
    public static final int z;

    static {
        a = Uri.parse(ck.d + "moments_pages_view");
        b = cdg.a.length;
        c = cdg.a.length + 1;
        d = cdg.a.length + 2;
        e = cdg.a.length + 3;
        f = cdg.a.length + 4;
        g = cdg.a.length + 5;
        h = cdg.a.length + 6;
        i = cdg.a.length + 7;
        j = cdg.a.length + 8;
        k = cdg.a.length + 9;
        l = cdg.a.length + 10;
        m = cdg.a.length + 11;
        n = cdg.a.length + 12;
        o = cdg.a.length + 13;
        p = cdg.a.length + 14;
        q = cdg.a.length + 15;
        r = cdg.a.length + 16;
        s = cdg.a.length + 17;
        t = cdg.a.length + 18;
        u = cdg.a.length + 19;
        v = cdg.a.length + 20;
        w = cdg.a.length + 21;
        x = cdg.a.length + 22;
        y = cdg.a.length + 23;
        z = cdg.a.length + 24;
        A = new String[(cdg.a.length + 25)];
        System.arraycopy(cdg.a, 0, A, 0, cdg.a.length);
        A[b] = "moments_title";
        A[c] = "moments_can_subscribe";
        A[d] = "moments_is_live";
        A[e] = "moments_is_sensitive";
        A[f] = "moments_subcategory_string";
        A[g] = "moments_subcategory_favicon_url";
        A[h] = "moments_time_string";
        A[i] = "moments_duration_string";
        A[j] = "moments_is_subscribed";
        A[k] = "moments_description";
        A[l] = "moments_moment_url";
        A[m] = "moments_num_subscribers";
        A[n] = "moments_author_info";
        A[o] = "moments_promoted_content";
        A[p] = "moments_event_id";
        A[q] = "moments_event_type";
        A[r] = "moment_sports_events_value";
        A[s] = "moments_pages_moment_id";
        A[t] = "moments_pages_tweet_id";
        A[u] = "moments_pages_page_id";
        A[v] = "moments_pages_page_number";
        A[w] = "moments_pages_last_read_timestamp";
        A[x] = "moments_pages_capsule_page_data";
        A[y] = "tweet_flags";
        A[z] = "user_friendship";
    }

    public static Uri a(long j) {
        return Uri.withAppendedPath(a, String.valueOf(j));
    }
}
