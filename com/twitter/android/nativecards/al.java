package com.twitter.android.nativecards;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
class al {
    private MediaImageView a;
    private float b;

    private al() {
    }

    public void a(ViewGroup viewGroup, Context context, String str, LayoutParams layoutParams, Drawable drawable) {
        if (this.a == null) {
            this.a = new MediaImageView(context);
            this.a.setDefaultDrawable(drawable);
            viewGroup.addView(this.a, layoutParams);
            this.a.setAspectRatio(this.b);
            this.a.a(a.a(str));
            this.a.setFromMemoryOnly(true);
            this.a.setVisibility(0);
            viewGroup.requestLayout();
        }
    }

    protected void a(ViewGroup viewGroup) {
        if (this.a != null) {
            viewGroup.removeView(this.a);
            this.a = null;
        }
    }

    public void a(float f) {
        this.b = f;
    }

    public void a(boolean z, int i, int i2, int i3, int i4) {
        if (this.a != null) {
            this.a.layout(i, i2, i3, i4);
        }
    }

    public void a() {
        if (this.a != null) {
            this.a.setFromMemoryOnly(false);
        }
    }
}
