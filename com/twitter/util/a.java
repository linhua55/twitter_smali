package com.twitter.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.Layout.Alignment;
import java.util.Locale;

/* compiled from: Twttr */
public class a extends w {
    public static final boolean a;

    static {
        a = VERSION.SDK_INT >= 17;
    }

    @TargetApi(17)
    public static boolean a(Context context) {
        return a(context.getResources());
    }

    @TargetApi(17)
    public static boolean a(Resources resources) {
        if (!a) {
            return w.a();
        }
        if (resources.getConfiguration().getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    public static String a(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        if (VERSION.SDK_INT >= 21 || !"el".equals(Locale.getDefault().getLanguage())) {
            return charSequence2.toUpperCase();
        }
        return charSequence2;
    }

    public static Alignment a(boolean z) {
        return (a || !z) ? Alignment.ALIGN_NORMAL : Alignment.ALIGN_OPPOSITE;
    }
}
