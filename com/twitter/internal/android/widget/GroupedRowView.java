package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.Cue;
import defpackage.bct;
import defpackage.bcu;
import defpackage.bcv;
import defpackage.bdd;

/* compiled from: Twttr */
public class GroupedRowView extends ViewGroup {
    private static final Paint a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private int f;
    private int g;
    private final RectF h;
    private final RectF i;
    private final RectF j;
    private final RectF k;
    private boolean l;
    private boolean m;
    private boolean n;

    static {
        a = new Paint(1);
    }

    public GroupedRowView(Context context) {
        this(context, null);
    }

    public GroupedRowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.groupedRowViewStyle);
    }

    public GroupedRowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = new RectF();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.GroupedRowView, i, 0);
        this.f = obtainStyledAttributes.getInt(bdd.GroupedRowView_cardStyle, 0);
        this.g = obtainStyledAttributes.getInt(bdd.GroupedRowView_groupStyle, 0);
        this.l = obtainStyledAttributes.getBoolean(bdd.GroupedRowView_single, false);
        this.d = obtainStyledAttributes.getColor(bdd.GroupedRowView_fillColor, ContextCompat.getColor(context, bcu.app_background));
        this.e = obtainStyledAttributes.getColor(bdd.GroupedRowView_borderColor, ContextCompat.getColor(context, bcu.border_color));
        this.c = obtainStyledAttributes.getDimensionPixelSize(bdd.GroupedRowView_borderHeight, 0);
        this.b = obtainStyledAttributes.getDimensionPixelSize(bdd.GroupedRowView_gapSize, getResources().getDimensionPixelSize(bcv.grouped_row_view_gap_size));
        this.m = obtainStyledAttributes.getBoolean(bdd.GroupedRowView_hideDivider, false);
        this.n = obtainStyledAttributes.getBoolean(bdd.GroupedRowView_hideBorder, false);
        super.setPadding(0, 0, 0, 0);
        obtainStyledAttributes.recycle();
    }

    public void addView(View view) {
        addView(view, getChildCount());
    }

    public void addView(View view, int i) {
        addView(view, i, view.getLayoutParams());
    }

    public void addView(View view, LayoutParams layoutParams) {
        addView(view, getChildCount(), layoutParams);
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("GroupedRowView can only hold a single child view.");
        }
        super.addView(view, i, layoutParams);
    }

    public void setPadding(int i, int i2, int i3, int i4) {
    }

    protected void onMeasure(int i, int i2) {
        int i3 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            setMeasuredDimension(0, 0);
            return;
        }
        int i4 = this.f;
        boolean z = this.l;
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) childAt.getLayoutParams();
        int size;
        int i5;
        if (i4 != 0 || z) {
            int i6;
            int suggestedMinimumWidth;
            int i7 = this.c;
            int mode = MeasureSpec.getMode(i);
            size = MeasureSpec.getSize(i);
            if (mode == C.ENCODING_PCM_32BIT) {
                i6 = size;
            } else {
                suggestedMinimumWidth = getSuggestedMinimumWidth();
                i6 = mode == Cue.TYPE_UNSET ? Math.min(suggestedMinimumWidth, size) : suggestedMinimumWidth;
            }
            measureChildWithMargins(childAt, getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), childAt.getLayoutParams().width), 0, i2, 0);
            mode = (childAt.getMeasuredHeight() + marginLayoutParams.topMargin) + marginLayoutParams.bottomMargin;
            if (z) {
                suggestedMinimumWidth = this.b;
                i5 = (0 + suggestedMinimumWidth) + i7;
                size = 0 + i7;
                i3 = i7;
            } else {
                size = 0;
                i5 = 0;
                suggestedMinimumWidth = 0;
            }
            if (i4 == 1) {
                suggestedMinimumWidth = this.b;
                i5 = (i5 + suggestedMinimumWidth) + i7;
                if (!this.m) {
                    size += i7;
                    i3 = suggestedMinimumWidth;
                    suggestedMinimumWidth = i5;
                    i5 = i7;
                    if (i4 == 2 || i4 == 3) {
                        size += i7;
                        i5 = i7;
                    }
                    this.h.set(0.0f, (float) suggestedMinimumWidth, (float) i6, (float) (mode + suggestedMinimumWidth));
                    size = (size + suggestedMinimumWidth) + mode;
                    this.i.set(0.0f, 0.0f, (float) i6, (float) i3);
                    this.j.set(0.0f, (float) i3, (float) i6, this.h.top);
                    this.k.set(0.0f, this.h.bottom, (float) i6, ((float) i5) + this.h.bottom);
                    setMeasuredDimension(i6, size);
                    return;
                }
            }
            int i8 = i5;
            i5 = i3;
            i3 = suggestedMinimumWidth;
            suggestedMinimumWidth = i8;
            size += i7;
            i5 = i7;
            this.h.set(0.0f, (float) suggestedMinimumWidth, (float) i6, (float) (mode + suggestedMinimumWidth));
            size = (size + suggestedMinimumWidth) + mode;
            this.i.set(0.0f, 0.0f, (float) i6, (float) i3);
            this.j.set(0.0f, (float) i3, (float) i6, this.h.top);
            this.k.set(0.0f, this.h.bottom, (float) i6, ((float) i5) + this.h.bottom);
            setMeasuredDimension(i6, size);
            return;
        }
        measureChildWithMargins(childAt, i, 0, i2, 0);
        size = (childAt.getMeasuredWidth() + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin;
        i5 = (childAt.getMeasuredHeight() + marginLayoutParams.topMargin) + marginLayoutParams.bottomMargin;
        this.h.set(0.0f, 0.0f, (float) size, (float) i5);
        setMeasuredDimension(size, i5);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new MarginLayoutParams(layoutParams);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(-2, -1);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() == 0) {
            RectF rectF = this.h;
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) childAt.getLayoutParams();
            childAt.layout(((int) rectF.left) + marginLayoutParams.leftMargin, ((int) rectF.top) + marginLayoutParams.topMargin, ((int) rectF.right) - marginLayoutParams.rightMargin, ((int) rectF.bottom) - marginLayoutParams.bottomMargin);
        }
    }

    public void dispatchDraw(Canvas canvas) {
        RectF rectF = this.h;
        int i = this.f;
        boolean z = this.l;
        if ((i != 0 || z) && rectF != null) {
            if (!this.n) {
                Paint paint = a;
                paint.setColor(this.d);
                canvas.drawRect(this.i, paint);
                paint.setColor(this.e);
                canvas.drawRect(this.j, paint);
                canvas.drawRect(this.k, paint);
            }
            i = canvas.save();
            canvas.clipRect(rectF);
            super.dispatchDraw(canvas);
            canvas.restoreToCount(i);
            return;
        }
        super.dispatchDraw(canvas);
    }

    public void a(int i, int i2) {
        boolean z = true;
        if (i2 > 1) {
            z = false;
        }
        this.l = z;
        b(i, i2);
    }

    private void b(int i, int i2) {
        if (i2 <= 1) {
            setStyle(0);
        } else if (i == 0) {
            setStyle(1);
        } else if (i == i2 - 1) {
            setStyle(3);
        } else {
            setStyle(2);
        }
    }

    public void setSingle(boolean z) {
        if (z != this.l) {
            this.l = z;
            if (z) {
                this.f = 0;
            }
            requestLayout();
            return;
        }
        invalidate();
    }

    public void a() {
        this.m = true;
    }

    public void setStyle(int i) {
        if (i != this.f) {
            this.f = i;
            requestLayout();
        } else {
            invalidate();
        }
        this.m = false;
    }

    public void a(int i, int i2, boolean z) {
        if (i2 <= 0) {
            setGroupStyle(0);
        } else if (i == 0) {
            if (z) {
                setGroupStyle(4);
            } else {
                setGroupStyle(1);
            }
        } else if (i == i2 - 1) {
            if (z) {
                setGroupStyle(6);
            } else {
                setGroupStyle(3);
            }
        } else if (z) {
            setGroupStyle(5);
        } else {
            setGroupStyle(2);
        }
    }

    public void setGroupStyle(int i) {
        if (i != this.g) {
            this.g = i;
            requestLayout();
            return;
        }
        invalidate();
    }
}
