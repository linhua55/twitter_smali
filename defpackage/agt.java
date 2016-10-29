package defpackage;

import android.graphics.Bitmap;
import android.support.annotation.ColorInt;
import android.support.v7.graphics.Palette;
import rx.w;

/* compiled from: Twttr */
/* renamed from: agt */
public class agt {
    public w<Integer> a(Bitmap bitmap, @ColorInt int i) {
        return agq.a(bitmap).c(a(i));
    }

    private cyw<? super Palette, Integer> a(@ColorInt int i) {
        return new agu(this, i);
    }
}
