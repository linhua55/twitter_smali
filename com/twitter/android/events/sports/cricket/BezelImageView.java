package com.twitter.android.events.sports.cricket;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class BezelImageView extends ImageView {
    private final Paint a;
    private final Paint b;
    private Rect c;
    private RectF d;
    private final Drawable e;
    private final Drawable f;
    private ColorMatrixColorFilter g;
    private final boolean h;
    private boolean i;
    private Bitmap j;
    private int k;
    private int l;
    private Canvas m;

    public BezelImageView(Context context) {
        this(context, null);
    }

    public BezelImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BezelImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.BezelImageView, i, 0);
        this.f = obtainStyledAttributes.getDrawable(0);
        if (this.f != null) {
            this.f.setCallback(this);
        }
        this.e = obtainStyledAttributes.getDrawable(1);
        if (this.e != null) {
            this.e.setCallback(this);
        }
        this.h = obtainStyledAttributes.getBoolean(2, false);
        obtainStyledAttributes.recycle();
        this.a = new Paint();
        this.a.setColor(-16777216);
        this.b = new Paint();
        this.b.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        this.j = Bitmap.createBitmap(1, 1, Config.ARGB_8888);
        if (this.h) {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            this.g = new ColorMatrixColorFilter(colorMatrix);
        }
    }

    protected boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        this.c = new Rect(0, 0, i3 - i, i4 - i2);
        this.d = new RectF(this.c);
        if (this.e != null) {
            this.e.setBounds(this.c);
        }
        if (this.f != null) {
            this.f.setBounds(this.c);
        }
        if (frame) {
            this.i = false;
        }
        return frame;
    }

    protected void onDraw(Canvas canvas) {
        if (this.c != null) {
            int width = this.c.width();
            int height = this.c.height();
            if (!(this.i && width == this.k && height == this.l)) {
                if (width == this.k && height == this.l) {
                    this.j.eraseColor(0);
                } else {
                    this.j.recycle();
                    this.j = Bitmap.createBitmap(width, height, Config.ARGB_8888);
                    this.k = width;
                    this.l = height;
                }
                this.m = new Canvas(this.j);
                if (this.f != null) {
                    ColorFilter colorFilter;
                    int save = this.m.save();
                    this.f.draw(this.m);
                    Paint paint = this.b;
                    if (this.h && isPressed()) {
                        colorFilter = this.g;
                    } else {
                        colorFilter = null;
                    }
                    paint.setColorFilter(colorFilter);
                    this.m.saveLayer(this.d, this.b, 12);
                    super.onDraw(this.m);
                    this.m.restoreToCount(save);
                } else if (this.h && isPressed()) {
                    int save2 = this.m.save();
                    this.m.drawRect(0.0f, 0.0f, (float) this.k, (float) this.l, this.a);
                    this.b.setColorFilter(this.g);
                    this.m.saveLayer(this.d, this.b, 12);
                    super.onDraw(this.m);
                    this.m.restoreToCount(save2);
                } else {
                    super.onDraw(this.m);
                }
                if (this.e != null) {
                    this.e.draw(this.m);
                }
            }
            canvas.drawBitmap(this.j, (float) this.c.left, (float) this.c.top, null);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.e != null && this.e.isStateful()) {
            this.e.setState(getDrawableState());
        }
        if (this.f != null && this.f.isStateful()) {
            this.f.setState(getDrawableState());
        }
        if (isDuplicateParentStateEnabled()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.e || drawable == this.f) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.e || drawable == this.f || super.verifyDrawable(drawable);
    }
}
