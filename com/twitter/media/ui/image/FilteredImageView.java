package com.twitter.media.ui.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.twitter.media.filters.FilterPreviewView;
import com.twitter.media.filters.Filters;
import com.twitter.media.filters.d;
import com.twitter.media.filters.g;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class FilteredImageView extends BaseMediaImageView<FilteredImageView> {
    private final ImageView a;
    private int h;
    private boolean i;
    private FilterPreviewView j;
    private Bitmap k;
    private boolean l;
    private Filters m;
    private d n;

    public FilteredImageView(Context context) {
        this(context, null);
    }

    public FilteredImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FilteredImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean a = g.a(context);
        this.a = new FixedSizeImageView(context);
        addView(this.a);
        if (a) {
            this.j = new FilterPreviewView(context);
            this.j.setFilterRenderListener(this.n);
            this.j.setVisibility(8);
        }
    }

    public void setFilters(Filters filters) {
        if (this.j != null) {
            this.j.a(filters, filters.c());
            this.j.setPreserveEGLContextOnPause(true);
            addView(this.j, 0);
            if (this.k != null) {
                this.j.a(this.k, this.i);
            }
            this.l = true;
            this.m = filters;
        }
    }

    public Filters getFilters() {
        return this.m;
    }

    public void a(int i, boolean z) {
        if (this.j != null) {
            this.h = i;
            this.j.setFilterId(this.h);
            if (this.i != z && this.k != null) {
                this.i = z;
                this.j.a(this.k, this.i);
            }
        }
    }

    public void setFilterIntensity(float f) {
        if (this.j != null) {
            this.j.setFilterIntensity(f);
        }
    }

    public float getFilterIntensity() {
        return this.j != null ? this.j.getFilterIntensity() : 1.0f;
    }

    protected void a(Drawable drawable) {
        this.k = null;
        this.a.setVisibility(0);
        this.a.setScaleType(ScaleType.CENTER);
        this.a.setImageDrawable(drawable);
        if (this.j != null) {
            this.j.setVisibility(8);
        }
    }

    protected void a(Drawable drawable, boolean z) {
        if (drawable instanceof BitmapDrawable) {
            this.k = ((BitmapDrawable) drawable).getBitmap();
            if (this.j != null) {
                this.j.setVisibility(0);
                if (this.j.getParent() != null) {
                    this.j.a(this.k, this.i);
                    return;
                }
                return;
            }
            this.a.setScaleType(ScaleType.FIT_CENTER);
            super.a(drawable, z);
            return;
        }
        super.a(drawable, z);
    }

    public ViewPropertyAnimator getImageViewAnimator() {
        return this.j != null ? this.j.animate() : this.a.animate();
    }

    public Size getImageSize() {
        return Size.a(this.a);
    }

    public void c() {
        if (this.j != null && this.l) {
            this.j.c();
        }
    }

    public void d() {
        if (this.j != null && this.l) {
            this.j.d();
        }
    }

    public void p() {
        if (this.j != null) {
            this.j.a();
        }
    }

    public void setFilterRenderListener(d dVar) {
        if (this.j != null) {
            this.j.setFilterRenderListener(dVar);
        }
        this.n = dVar;
    }

    protected boolean q() {
        return this.k != null;
    }
}
