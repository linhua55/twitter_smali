package defpackage;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.util.TypedValue;

/* compiled from: Twttr */
/* renamed from: bde */
public abstract class bde {
    @ColorInt
    public static int a(Context context) {
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(bct.toolbarForegroundColor, typedValue, true) ? typedValue.data : 0;
    }

    public static Drawable a(Drawable drawable, int i) {
        if (!(drawable == null || i == 0)) {
            drawable.mutate().setColorFilter(new PorterDuffColorFilter(i, Mode.SRC_IN));
        }
        return drawable;
    }
}
