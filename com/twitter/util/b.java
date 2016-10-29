package com.twitter.util;

import android.content.res.Resources;
import android.support.annotation.StringRes;

/* compiled from: Twttr */
public class b {
    public static String a(Resources resources, @StringRes int i, @StringRes int i2, String str) {
        if (str == null) {
            return resources.getString(i2);
        }
        return resources.getString(i, new Object[]{str});
    }
}
