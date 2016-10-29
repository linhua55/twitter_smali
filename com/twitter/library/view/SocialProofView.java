package com.twitter.library.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.twitter.ui.widget.ax;
import com.twitter.util.ak;
import com.twitter.util.object.e;
import com.twitter.util.ui.i;
import com.twitter.util.ui.r;
import defpackage.bct;
import defpackage.bdd;
import defpackage.cei;
import defpackage.cek;

/* compiled from: Twttr */
public class SocialProofView extends View implements cek {
    private final boolean a;
    private final TextPaint b;
    private final int c;
    private final float d;
    private final int e;
    private final int f;
    private final Rect g;
    private final ColorStateList h;
    private boolean i;
    private int j;
    private String k;
    private String l;
    private Drawable m;
    private StaticLayout n;
    private int o;

    public SocialProofView(Context context) {
        this(context, null);
    }

    public SocialProofView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.socialProofViewStyle);
    }

    public SocialProofView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = ak.f();
        this.b = new TextPaint(1);
        this.g = new Rect();
        setVisibility(8);
        ax a = ax.a(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.SocialProofView, i, 0);
        this.d = obtainStyledAttributes.getFloat(bdd.SocialProofView_android_lineSpacingMultiplier, 1.0f);
        this.c = obtainStyledAttributes.getDimensionPixelSize(bdd.SocialProofView_android_lineSpacingExtra, 0);
        this.e = obtainStyledAttributes.getDimensionPixelOffset(bdd.SocialProofView_badgeSpacing, 0);
        this.h = obtainStyledAttributes.getColorStateList(bdd.SocialProofView_socialProofTextColor);
        this.f = obtainStyledAttributes.getDimensionPixelOffset(bdd.SocialProofView_badgeTextSpacing, 0);
        obtainStyledAttributes.recycle();
        this.b.setTypeface(a.a);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        this.b.setColor(this.h.getColorForState(drawableState, 0));
        if (this.m != null && this.m.isStateful()) {
            this.m.setState(drawableState);
        }
    }

    public void setContentSize(float f) {
        this.b.setTextSize(f);
        a();
        requestLayout();
        invalidate();
    }

    public void setTextOffset(int i) {
        if (this.o != i) {
            this.o = i;
            requestLayout();
            invalidate();
        }
    }

    public void setSocialProofData(cei cei) {
        this.m = null;
        a();
        this.k = cei.b();
        this.l = cei.c();
        if (this.k == null) {
            this.i = false;
            this.l = null;
            setVisibility(8);
            return;
        }
        int d = cei.d();
        if (d > 0) {
            this.m = getResources().getDrawable(d);
            d = cei.e();
            if (!(this.m == null || d == 0)) {
                this.m.setColorFilter(d, Mode.SRC_IN);
            }
        }
        this.i = true;
        setVisibility(0);
        invalidate();
        requestLayout();
    }

    public String getSocialProofAccessibilityString() {
        String str = (!this.i || this.l == null) ? this.k : this.l;
        return e.b(str);
    }

    protected void onMeasure(int i, int i2) {
        TextPaint textPaint = this.b;
        int size = MeasureSpec.getSize(i) - this.o;
        if (size <= 0) {
            setMeasuredDimension(16777216, 16777216);
        } else if (this.k != null) {
            if (this.m != null) {
                if (this.n == null) {
                    this.n = new StaticLayout(this.k, 0, this.k.length(), textPaint, Math.min(r.a(this.k, textPaint), size), Alignment.ALIGN_NORMAL, this.d, (float) this.c, false, null, size);
                }
                this.m.setBounds(0, 0, this.m.getIntrinsicWidth(), this.m.getIntrinsicHeight());
            } else if (this.n == null) {
                this.n = new StaticLayout(this.k, 0, this.k.length(), textPaint, Math.min(r.a(this.k, textPaint), size), Alignment.ALIGN_NORMAL, this.d, (float) this.c, false, TruncateAt.END, size);
            }
            this.b.getTextBounds(this.k, 0, this.k.length(), this.g);
            this.j = i.a(this.n, this.g);
            int height = (this.m == null || this.n.getLineCount() > 1) ? this.n.getHeight() : this.m.getBounds().height();
            setMeasuredDimension(i, height + this.e);
        } else {
            super.onMeasure(i, i2);
        }
    }

    protected void onDraw(Canvas canvas) {
        int i = 0;
        if (this.n != null) {
            int width;
            int i2 = -this.j;
            int width2;
            if (this.m != null) {
                Rect bounds = this.m.getBounds();
                int width3 = bounds.width();
                int height = bounds.height();
                if (this.a) {
                    width2 = (getWidth() - this.o) + this.f;
                    width = width2 - (this.n.getWidth() + this.f);
                } else {
                    width = this.o;
                    width2 = (this.o - width3) - this.f;
                }
                width3 = ((int) this.b.getFontSpacing()) - height;
                if (width3 <= 0) {
                    i = -width3;
                    width3 = 0;
                }
                canvas.save();
                canvas.translate((float) width2, (float) (width3 + i2));
                this.m.draw(canvas);
                canvas.restore();
            } else {
                if (this.a) {
                    width2 = (getWidth() - this.o) - this.n.getWidth();
                } else {
                    width2 = this.o;
                }
                width = width2;
            }
            canvas.save();
            canvas.translate((float) width, (float) (i + i2));
            this.n.draw(canvas);
            canvas.restore();
        }
    }

    private void a() {
        this.n = null;
    }
}
