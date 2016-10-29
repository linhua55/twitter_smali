package com.twitter.library.provider;

import android.net.Uri;

/* compiled from: Twttr */
public interface dc {
    public static final Uri a;
    public static final Uri b;
    public static final Uri c;
    public static final Uri d;

    static {
        a = Uri.parse(ck.d + "status_groups_retweets_view");
        b = Uri.parse(ck.d + "status_groups_retweets_view" + "/rt_timeline");
        c = Uri.parse(ck.d + "status_groups_retweets_view" + "/activity");
        d = Uri.parse(ck.d + "status_groups_retweets_view" + "/ref_id");
    }
}
