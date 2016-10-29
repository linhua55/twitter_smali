package com.twitter.library.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.util.Util;
import com.twitter.library.util.ao;
import com.twitter.ui.widget.ax;
import com.twitter.util.ui.r;
import defpackage.bct;
import defpackage.bdd;

/* compiled from: Twttr */
public class SocialBylineView extends View {
    private static final TextPaint a;
    private final int b;
    private final int c;
    private final ColorStateList d;
    private int e;
    private int f;
    private CharSequence g;
    private float h;
    private Drawable i;
    private StaticLayout j;
    private boolean k;
    private final ax l;

    static {
        a = new TextPaint(1);
    }

    public SocialBylineView(Context context) {
        this(context, null);
    }

    public SocialBylineView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.socialBylineViewStyle);
    }

    public SocialBylineView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.SocialBylineView, i, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(bdd.SocialBylineView_minIconWidth, 0);
        this.b = obtainStyledAttributes.getDimensionPixelSize(bdd.SocialBylineView_iconMargin, 0);
        this.c = obtainStyledAttributes.getDimensionPixelSize(bdd.SocialBylineView_socialContextPadding, 0);
        this.h = obtainStyledAttributes.getDimension(bdd.SocialBylineView_labelSize, ao.b());
        this.d = obtainStyledAttributes.getColorStateList(bdd.SocialBylineView_labelColor);
        if (this.d != null) {
            this.f = this.d.getColorForState(getDrawableState(), 0);
        }
        obtainStyledAttributes.recycle();
        this.l = ax.a(context);
    }

    public void setRenderRTL(boolean z) {
        this.k = z;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.d.isStateful()) {
            int colorForState = this.d.getColorForState(getDrawableState(), 0);
            if (this.f != colorForState) {
                this.f = colorForState;
                invalidate();
            }
        }
        if (this.i != null && this.i.isStateful()) {
            this.i.setState(getDrawableState());
        }
    }

    protected void onMeasure(int i, int i2) {
        int intrinsicHeight;
        int i3;
        int a;
        int i4;
        StaticLayout staticLayout;
        int height;
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        TextPaint textPaint = a;
        Drawable drawable = this.i;
        CharSequence charSequence = this.g;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        if (drawable != null) {
            int max = Math.max(this.e, drawable.getIntrinsicWidth());
            intrinsicHeight = drawable.getIntrinsicHeight();
            i3 = max;
        } else {
            intrinsicHeight = 0;
            i3 = this.e;
        }
        switch (mode) {
            case Cue.TYPE_UNSET /*-2147483648*/:
            case Util.TYPE_DASH /*0*/:
                a = r.a(this.g, textPaint);
                i4 = (((paddingLeft + paddingRight) + i3) + this.b) + a;
                break;
            case C.ENCODING_PCM_32BIT /*1073741824*/:
                a = (((size - paddingLeft) - paddingRight) - this.b) - i3;
                i4 = size;
                break;
            default:
                size = getSuggestedMinimumWidth();
                a = (((size - paddingLeft) - paddingRight) - this.b) - i3;
                i4 = size;
                break;
        }
        if (charSequence != null) {
            textPaint.setTypeface(this.l.a);
            textPaint.setTextSize(this.h);
            if (mode == 0) {
                staticLayout = new StaticLayout(charSequence, textPaint, a, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            } else {
                staticLayout = new StaticLayout(charSequence, 0, charSequence.length(), a, Math.min(r.a(this.g, textPaint), a), Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            height = staticLayout.getHeight();
        } else {
            height = 0;
            staticLayout = null;
        }
        a = Math.max(height, intrinsicHeight);
        if (drawable != null) {
            int i5;
            max = drawable.getIntrinsicWidth();
            if (this.k) {
                i5 = (i4 - paddingRight) - i3;
            } else {
                i5 = (paddingLeft + i3) - max;
            }
            if (height > intrinsicHeight) {
                height = ((height - intrinsicHeight) / 2) + paddingTop;
            } else {
                height = paddingTop;
            }
            drawable.setBounds(i5, height, max + i5, height + intrinsicHeight);
        }
        this.j = staticLayout;
        if (MeasureSpec.getMode(i2) == C.ENCODING_PCM_32BIT) {
            size = MeasureSpec.getSize(i2);
        } else {
            size = Math.max(getSuggestedMinimumHeight(), (a + paddingTop) + getPaddingBottom());
        }
        setMeasuredDimension(i4, size);
    }

    protected void onDraw(Canvas canvas) {
        Rect bounds;
        int height;
        Paint paint = a;
        Drawable drawable = this.i;
        StaticLayout staticLayout = this.j;
        Object obj = drawable != null ? 1 : null;
        canvas.save();
        canvas.translate(0.0f, (float) this.c);
        if (obj != null) {
            drawable.draw(canvas);
            bounds = drawable.getBounds();
            height = bounds.height();
        } else {
            height = 0;
            bounds = null;
        }
        if (staticLayout != null) {
            int width;
            if (this.k) {
                if (obj != null) {
                    width = (bounds.left - staticLayout.getWidth()) - this.b;
                } else {
                    width = (getWidth() - staticLayout.getWidth()) - this.b;
                }
            } else if (obj != null) {
                width = bounds.right + this.b;
            } else {
                width = this.e + this.b;
            }
            if (this.j.getLineCount() > 1) {
                canvas.translate((float) width, (float) (getPaddingTop() - (a(staticLayout.getText().toString(), paint) / 2)));
            } else {
                int height2 = staticLayout.getHeight();
                canvas.translate((float) width, (float) (((Math.max(height, height2) - height2) / 2) + getPaddingTop()));
            }
            paint.setTypeface(this.l.a);
            paint.setTextSize(this.h);
            paint.setColor(this.f);
            staticLayout.draw(canvas);
            canvas.restore();
        }
    }

    private static int a(String str, Paint paint) {
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        return Math.abs(rect.top);
    }

    public void setLabel(CharSequence charSequence) {
        if (charSequence != null || this.g != null) {
            if (charSequence == null || !charSequence.equals(this.g)) {
                this.g = charSequence;
                requestLayout();
            }
        }
    }

    public void setLabelSize(float f) {
        this.h = f;
    }

    public void setMinIconWidth(int i) {
        this.e = i;
    }

    public void setIcon(int i) {
        setIconDrawable(getResources().getDrawable(i));
    }

    public void setIconDrawable(Drawable drawable) {
        if (this.i != drawable) {
            this.i = drawable;
            if (drawable != null) {
                requestLayout();
            }
        }
    }
}
