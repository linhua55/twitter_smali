package com.twitter.library.provider;

import android.net.Uri;
import cdg;

/* compiled from: Twttr */
public final class bu {
    public static final int A;
    public static final int B;
    public static final int C;
    public static final int D;
    public static final int E;
    public static final int F;
    public static final int G;
    public static final int H;
    public static final int I;
    public static final String[] J;
    private static final Uri K;
    private static final Uri L;
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
        a = Uri.parse(ck.d + "moments_pivot_guide");
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
        A = cdg.a.length + 25;
        B = cdg.a.length + 26;
        C = cdg.a.length + 27;
        D = cdg.a.length + 28;
        E = cdg.a.length + 29;
        F = cdg.a.length + 30;
        G = cdg.a.length + 31;
        H = cdg.a.length + 32;
        I = cdg.a.length + 33;
        J = new String[(cdg.a.length + 34)];
        System.arraycopy(cdg.a, 0, J, 0, cdg.a.length);
        J[b] = "moments_title";
        J[c] = "moments_can_subscribe";
        J[d] = "moments_is_live";
        J[e] = "moments_is_sensitive";
        J[f] = "moments_subcategory_string";
        J[g] = "moments_subcategory_favicon_url";
        J[h] = "moments_time_string";
        J[i] = "moments_duration_string";
        J[j] = "moments_is_subscribed";
        J[k] = "moments_description";
        J[l] = "moments_moment_url";
        J[m] = "moments_num_subscribers";
        J[n] = "moments_author_info";
        J[o] = "moments_promoted_content";
        J[p] = "moments_event_id";
        J[q] = "moments_event_type";
        J[r] = "moment_sports_events_value";
        J[s] = "moments_guide_moment_id";
        J[t] = "moments_guide_section_id";
        J[u] = "moments_guide_tweet_id";
        J[v] = "moments_guide_crop_data";
        J[w] = "moments_guide_media_id";
        J[x] = "moments_guide_media_url";
        J[y] = "moments_guide_media_size";
        J[z] = "moments_guide_display_type";
        J[A] = "moments_guide_context_string";
        J[B] = "moments_guide_context_scribe_info";
        J[C] = "moments_guide_user_states_is_updated";
        J[D] = "moments_guide_user_states_is_read";
        J[E] = "moments_sections_section_title";
        J[F] = "moments_sections_section_type";
        J[G] = "moments_sections_section_category_id";
        J[H] = "moments_sections_section_footer";
        J[I] = "moments_sections_section_footer_deeplink";
        K = Uri.parse(ck.d + "moments_guide_view");
        L = Uri.parse(ck.d + "moments_sectioned_guide");
    }

    public static Uri a(long j) {
        return Uri.withAppendedPath(a, String.valueOf(j));
    }

    public static Uri a(String str) {
        return Uri.withAppendedPath(L, str);
    }
}
