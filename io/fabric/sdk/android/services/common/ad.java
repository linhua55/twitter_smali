package io.fabric.sdk.android.services.common;

import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
public class ad {
    public static int a(int i) {
        if (i >= ApiRunnable.ACTION_CODE_PUBLIC_GET_BROADCASTS && i <= 299) {
            return 0;
        }
        if (i >= 300 && i <= 399) {
            return 1;
        }
        if (i >= 400 && i <= 499) {
            return 0;
        }
        if (i >= 500) {
            return 1;
        }
        return 1;
    }
}
