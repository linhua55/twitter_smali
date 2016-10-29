package com.twitter.ui.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

/* compiled from: Twttr */
class g implements Callback {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public void invalidateDrawable(Drawable drawable) {
        this.a.invalidateSelf();
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        this.a.scheduleSelf(runnable, j);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        this.a.unscheduleSelf(runnable);
    }
}
