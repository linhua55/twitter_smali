package com.facebook.drawee.drawable;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import com.google.android.exoplayer.util.NalUnitUtil;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class d {
    public static void a(Drawable drawable, Drawable drawable2) {
        if (drawable2 != null && drawable != null && drawable != drawable2) {
            drawable.setBounds(drawable2.getBounds());
            drawable.setChangingConfigurations(drawable2.getChangingConfigurations());
            drawable.setLevel(drawable2.getLevel());
            drawable.setVisible(drawable2.isVisible(), false);
            drawable.setState(drawable2.getState());
        }
    }

    public static void a(Drawable drawable, c cVar) {
        if (drawable != null && cVar != null) {
            cVar.a(drawable);
        }
    }

    public static void a(Drawable drawable, @Nullable Callback callback, @Nullable q qVar) {
        if (drawable != null) {
            drawable.setCallback(callback);
            if (drawable instanceof p) {
                ((p) drawable).a(qVar);
            }
        }
    }

    public static int a(int i, int i2) {
        if (i2 == NalUnitUtil.EXTENDED_SAR) {
            return i;
        }
        if (i2 == 0) {
            return i & 16777215;
        }
        return (((((i2 >> 7) + i2) * (i >>> 24)) >> 8) << 24) | (i & 16777215);
    }

    public static int a(int i) {
        int i2 = i >>> 24;
        if (i2 == NalUnitUtil.EXTENDED_SAR) {
            return -1;
        }
        if (i2 == 0) {
            return -2;
        }
        return -3;
    }
}
