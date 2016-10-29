package com.twitter.android;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.annotation.ColorInt;
import android.view.animation.AccelerateInterpolator;
import com.twitter.media.util.a;

/* compiled from: Twttr */
public class oc {
    private final AccelerateInterpolator a;
    private final Rect b;
    private final Drawable c;
    private final Resources d;
    private final float e;
    private LayerDrawable f;

    public oc(Resources resources, Drawable drawable, Rect rect) {
        this(resources, drawable, rect, 0.0f);
    }

    public oc(Resources resources, Drawable drawable, Rect rect, float f) {
        this.d = resources;
        if (drawable == null) {
            drawable = c();
        }
        this.c = drawable;
        this.b = rect;
        this.a = new AccelerateInterpolator(3.0f);
        this.e = f;
    }

    public Drawable a() {
        return this.f == null ? c() : this.c;
    }

    public LayerDrawable a(@ColorInt int i) {
        return this.f == null ? a(new ColorDrawable(i)) : this.f;
    }

    public void a(Bitmap bitmap, boolean z) {
        b();
        try {
            Bitmap a = a(bitmap);
            if (a != null) {
                this.f = a(new BitmapDrawable(this.d, a));
            }
            if (z) {
                bitmap.recycle();
            }
        } catch (Throwable th) {
            if (z) {
                bitmap.recycle();
            }
        }
    }

    private Bitmap a(Bitmap bitmap) {
        if (this.b.top < 0 || this.b.left < 0) {
            return null;
        }
        Bitmap a = a.a(bitmap, this.b, null, false);
        if (a == bitmap) {
            return a.a(bitmap);
        }
        return a;
    }

    public void a(float f) {
        this.c.setColorFilter(Color.argb((int) (Math.max(this.e, this.a.getInterpolation(Math.min(f, 1.0f))) * 96.0f), 0, 0, 0), Mode.SRC_OVER);
    }

    public void b() {
        if (this.f != null) {
            Drawable drawable = this.f.getDrawable(0);
            if (drawable instanceof BitmapDrawable) {
                ((BitmapDrawable) drawable).getBitmap().recycle();
            }
            this.f = null;
        }
    }

    private LayerDrawable a(Drawable drawable) {
        return new LayerDrawable(new Drawable[]{drawable, this.c});
    }

    private Drawable c() {
        return new ColorDrawable(0);
    }
}
