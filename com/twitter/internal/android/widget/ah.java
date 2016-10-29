package com.twitter.internal.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.TypedValue;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.twitter.ui.widget.ax;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
final class ah extends Drawable {
    private Drawable a;
    private CharSequence b;
    private TextPaint c;
    private int d;
    private int e;
    private int f;
    private int g;
    private final Rect h;
    private float i;

    ah(Context context) {
        this.h = new Rect();
        a(context);
    }

    private void a(Context context) {
        this.g = -16777216;
        this.i = TypedValue.applyDimension(2, 16.0f, context.getResources().getDisplayMetrics());
    }

    public void a(int i) {
        if (this.g != i) {
            this.g = i;
            invalidateSelf();
        }
    }

    public void a(float f) {
        if (f > 0.0f && this.i != f) {
            this.i = f;
            invalidateSelf();
        }
    }

    public void a(Drawable drawable) {
        if (this.a != drawable) {
            this.a = drawable;
            invalidateSelf();
        }
    }

    public void a(Context context, CharSequence charSequence) {
        if (charSequence == null) {
            throw new IllegalArgumentException("text cannot be null");
        } else if (!charSequence.equals(this.b)) {
            if (this.c == null) {
                this.c = new TextPaint(1);
                this.c.setTypeface(ax.a(context).c);
                this.c.setTextSize(this.i);
            }
            FontMetricsInt fontMetricsInt = this.c.getFontMetricsInt();
            this.b = charSequence;
            this.d = r.a(charSequence, this.c);
            this.e = fontMetricsInt.bottom - fontMetricsInt.top;
            this.c.getTextBounds(charSequence.toString(), 0, charSequence.length(), this.h);
            this.f = this.h.height();
            invalidateSelf();
        }
    }

    public void draw(Canvas canvas) {
        if (this.a != null) {
            this.a.draw(canvas);
        }
        Rect bounds = getBounds();
        int a = bounds.left + r.a(bounds.width(), this.d);
        int centerY = bounds.centerY() + ((int) Math.ceil((double) (((float) this.f) * 0.5f)));
        this.c.setColor(this.g);
        canvas.drawText(this.b, 0, this.b.length(), (float) a, (float) centerY, this.c);
    }

    public boolean setState(int[] iArr) {
        boolean state = super.setState(iArr);
        if (this.a != null) {
            return state | this.a.setState(iArr);
        }
        return state;
    }

    public boolean isStateful() {
        return this.a != null && this.a.isStateful();
    }

    public void setAlpha(int i) {
        this.c.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.c.setColorFilter(colorFilter);
    }

    public Region getTransparentRegion() {
        if (this.a != null) {
            return this.a.getTransparentRegion();
        }
        return super.getTransparentRegion();
    }

    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.a != null) {
            this.a.setBounds(rect);
        }
    }

    public int getIntrinsicWidth() {
        if (this.a == null) {
            return this.d;
        }
        Rect rect = this.h;
        this.a.getPadding(rect);
        return (rect.right + rect.left) + Math.max(this.a.getIntrinsicWidth(), this.d);
    }

    public int getIntrinsicHeight() {
        if (this.a == null) {
            return this.e;
        }
        Rect rect = this.h;
        this.a.getPadding(rect);
        return (rect.bottom + rect.top) + Math.max(this.a.getIntrinsicHeight(), this.e);
    }

    public boolean getPadding(Rect rect) {
        if (this.a != null) {
            return this.a.getPadding(rect);
        }
        return super.getPadding(rect);
    }

    public int getOpacity() {
        int i;
        switch (this.c.getAlpha()) {
            case Util.TYPE_DASH /*0*/:
                i = -1;
                break;
            case NalUnitUtil.EXTENDED_SAR /*255*/:
                i = -2;
                break;
            default:
                i = -3;
                break;
        }
        if (this.a != null) {
            return resolveOpacity(i, this.a.getOpacity());
        }
        return i;
    }
}
