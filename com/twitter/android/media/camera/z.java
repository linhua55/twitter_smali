package com.twitter.android.media.camera;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.twitter.android.lf;
import com.twitter.android.runtimepermissions.b;
import com.twitter.util.collection.CollectionUtils;

/* compiled from: Twttr */
public class z {
    public static final String[] a;
    public static final String[] b;

    static {
        a = new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE"};
        b = new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.RECORD_AUDIO"};
    }

    public static boolean a(Activity activity, int i) {
        return lf.a().a((Context) activity, a(i));
    }

    public static String[] a(int i) {
        return i == 2 ? b : a;
    }

    public static Intent a(Activity activity, int i, String str) {
        int i2;
        int i3;
        if (i == 2) {
            i2 = 2131364145;
            i3 = 2131364144;
        } else {
            i2 = 2131363323;
            i3 = 2131363322;
        }
        return new b(activity.getString(i2), activity, a(i)).e(activity.getString(i3)).f(str).a();
    }

    public static int a(Intent intent) {
        Object[] stringArrayExtra = intent.getStringArrayExtra("extra_permissions");
        if (stringArrayExtra == null || !CollectionUtils.a(stringArrayExtra, (Object) "android.permission.CAMERA")) {
            return 0;
        }
        if (CollectionUtils.a(stringArrayExtra, (Object) "android.permission.RECORD_AUDIO")) {
            return 2;
        }
        return 1;
    }
}
