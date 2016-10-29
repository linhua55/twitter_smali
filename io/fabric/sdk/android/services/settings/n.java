package io.fabric.sdk.android.services.settings;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.common.CommonUtils;

/* compiled from: Twttr */
public class n {
    public final String a;
    public final int b;
    public final int c;
    public final int d;

    public n(String str, int i, int i2, int i3) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public static n a(Context context, String str) {
        if (str != null) {
            try {
                int l = CommonUtils.l(context);
                f.h().a("Fabric", "App icon resource ID is " + l);
                Options options = new Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeResource(context.getResources(), l, options);
                return new n(str, l, options.outWidth, options.outHeight);
            } catch (Throwable e) {
                f.h().e("Fabric", "Failed to load icon", e);
            }
        }
        return null;
    }
}
