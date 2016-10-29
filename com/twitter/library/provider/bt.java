package com.twitter.library.provider;

import android.net.Uri;

/* compiled from: Twttr */
public interface bt {
    public static final Uri a;
    public static final String[] b;

    static {
        a = Uri.parse(ck.d + "moments_guide_categories");
        b = new String[]{"category_id", "category_name", "is_default_category", "fetch_timestamp"};
    }
}
