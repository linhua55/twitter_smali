package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.media.util.a;
import defpackage.bct;
import defpackage.bdd;

/* compiled from: Twttr */
public class RoundedGroupedRowView extends ViewGroup {
    private static final Paint a;
    private static final Paint b;
    private float[] A;
    private boolean B;
    private boolean C;
    private final float c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final float j;
    private final int k;
    private final int l;
    private int m;
    private int n;
    private RectShape o;
    private RectShape p;
    private final RectF q;
    private RectF r;
    private final RectF s;
    private final RectF t;
    private final RectShape u;
    private RoundRectShape v;
    private RoundRectShape w;
    private RoundRectShape x;
    private float[] y;
    private float[] z;

    static {
        a = new Paint(1);
        b = new Paint(3);
    }

    public RoundedGroupedRowView(Context context) {
        this(context, null);
    }

    public RoundedGroupedRowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.groupedRowViewStyle);
    }

    public RoundedGroupedRowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.q = new RectF();
        this.r = new RectF();
        this.s = new RectF();
        this.t = new RectF();
        this.u = new RectShape();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.RoundedGroupedRowView, i, 0);
        this.m = obtainStyledAttributes.getInt(bdd.RoundedGroupedRowView_cardStyle, 0);
        this.n = obtainStyledAttributes.getInt(bdd.RoundedGroupedRowView_groupStyle, 0);
        this.c = obtainStyledAttributes.getDimension(bdd.RoundedGroupedRowView_cornerRadius, 0.0f);
        if (this.c > 0.0f) {
            this.y = new float[]{this.c, this.c, this.c, this.c, this.c, this.c, this.c, this.c};
            this.v = new RoundRectShape(this.y, null, null);
            this.z = new float[]{this.c, this.c, this.c, this.c, 0.0f, 0.0f, 0.0f, 0.0f};
            this.w = new RoundRectShape(this.z, null, null);
            this.A = new float[]{0.0f, 0.0f, 0.0f, 0.0f, this.c, this.c, this.c, this.c};
            this.x = new RoundRectShape(this.A, null, null);
        }
        this.h = obtainStyledAttributes.getDimensionPixelSize(bdd.RoundedGroupedRowView_dividerHeight, 0);
        this.i = obtainStyledAttributes.getColor(bdd.RoundedGroupedRowView_dividerColor, -3355444);
        this.l = obtainStyledAttributes.getColor(bdd.RoundedGroupedRowView_insetBottomFillColor, 0);
        this.j = obtainStyledAttributes.getDimension(bdd.RoundedGroupedRowView_strokeWidth, 0.0f);
        Paint paint = a;
        float dimension = obtainStyledAttributes.getDimension(bdd.RoundedGroupedRowView_shadowRadius, 0.0f);
        if (dimension > 0.0f) {
            int color = obtainStyledAttributes.getColor(bdd.RoundedGroupedRowView_shadowColor, -12303292);
            paint.setShadowLayer(dimension, obtainStyledAttributes.getDimension(bdd.RoundedGroupedRowView_shadowDx, 0.0f), obtainStyledAttributes.getDimension(bdd.RoundedGroupedRowView_shadowDy, 0.0f), color);
            if (this.j <= 0.0f) {
                this.k = color;
            } else {
                this.k = obtainStyledAttributes.getColor(bdd.RoundedGroupedRowView_strokeColor, color);
            }
        } else {
            this.k = obtainStyledAttributes.getColor(bdd.RoundedGroupedRowView_strokeColor, -12303292);
        }
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(bdd.RoundedGroupedRowView_inset, 0);
        this.d = obtainStyledAttributes.getDimensionPixelOffset(bdd.RoundedGroupedRowView_insetLeft, dimensionPixelOffset);
        this.e = obtainStyledAttributes.getDimensionPixelOffset(bdd.RoundedGroupedRowView_insetTop, dimensionPixelOffset);
        this.f = obtainStyledAttributes.getDimensionPixelOffset(bdd.RoundedGroupedRowView_insetRight, dimensionPixelOffset);
        this.g = obtainStyledAttributes.getDimensionPixelOffset(bdd.RoundedGroupedRowView_insetBottom, dimensionPixelOffset);
        if (getBackground() == null) {
            setBackgroundColor(getResources().getColor(17170445));
        }
        this.B = obtainStyledAttributes.getBoolean(bdd.RoundedGroupedRowView_single, false);
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
            throw new IllegalStateException("RoundedGroupedRowView can only hold a single child view.");
        }
        super.addView(view, i, layoutParams);
    }

    public void setPadding(int i, int i2, int i3, int i4) {
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onMeasure(int r19, int r20) {
        /*
        r18 = this;
        r2 = 0;
        r0 = r18;
        r3 = r0.getChildAt(r2);
        if (r3 == 0) goto L_0x0011;
    L_0x0009:
        r2 = r3.getVisibility();
        r4 = 8;
        if (r2 != r4) goto L_0x0019;
    L_0x0011:
        r2 = 0;
        r3 = 0;
        r0 = r18;
        r0.setMeasuredDimension(r2, r3);
    L_0x0018:
        return;
    L_0x0019:
        r0 = r18;
        r13 = r0.m;
        r0 = r18;
        r14 = r0.B;
        r2 = r3.getLayoutParams();
        r8 = r2;
        r8 = (android.view.ViewGroup.MarginLayoutParams) r8;
        if (r13 != 0) goto L_0x005c;
    L_0x002a:
        if (r14 != 0) goto L_0x005c;
    L_0x002c:
        r5 = 0;
        r7 = 0;
        r2 = r18;
        r4 = r19;
        r6 = r20;
        r2.measureChildWithMargins(r3, r4, r5, r6, r7);
        r2 = r3.getMeasuredWidth();
        r4 = r8.leftMargin;
        r2 = r2 + r4;
        r4 = r8.rightMargin;
        r2 = r2 + r4;
        r3 = r3.getMeasuredHeight();
        r4 = r8.topMargin;
        r3 = r3 + r4;
        r4 = r8.bottomMargin;
        r3 = r3 + r4;
        r0 = r18;
        r4 = r0.r;
        r5 = 0;
        r6 = 0;
        r7 = (float) r2;
        r8 = (float) r3;
        r4.set(r5, r6, r7, r8);
        r0 = r18;
        r0.setMeasuredDimension(r2, r3);
        goto L_0x0018;
    L_0x005c:
        r0 = r18;
        r11 = r0.e;
        r0 = r18;
        r12 = r0.g;
        r0 = r18;
        r15 = r0.d;
        r0 = r18;
        r0 = r0.f;
        r16 = r0;
        r0 = r18;
        r2 = r0.C;
        if (r2 == 0) goto L_0x0101;
    L_0x0074:
        r2 = 0;
        r9 = r2;
    L_0x0076:
        r5 = r15 + r16;
        r6 = android.view.View.MeasureSpec.getMode(r19);
        r2 = android.view.View.MeasureSpec.getSize(r19);
        r4 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r6 != r4) goto L_0x0108;
    L_0x0084:
        r10 = r2;
    L_0x0085:
        r2 = r3.getLayoutParams();
        r4 = r18.getPaddingLeft();
        r4 = r4 + r5;
        r5 = r18.getPaddingRight();
        r4 = r4 + r5;
        r2 = r2.width;
        r0 = r19;
        r4 = getChildMeasureSpec(r0, r4, r2);
        r5 = 0;
        r7 = 0;
        r2 = r18;
        r6 = r20;
        r2.measureChildWithMargins(r3, r4, r5, r6, r7);
        r2 = r3.getMeasuredHeight();
        r3 = r8.topMargin;
        r2 = r2 + r3;
        r3 = r8.bottomMargin;
        r4 = r2 + r3;
        r5 = r10 - r16;
        r0 = r18;
        r6 = r0.j;
        r0 = r18;
        r2 = r0.n;
        if (r14 == 0) goto L_0x014b;
    L_0x00bb:
        switch(r13) {
            case 0: goto L_0x0117;
            case 1: goto L_0x012a;
            case 2: goto L_0x0140;
            case 3: goto L_0x0146;
            default: goto L_0x00be;
        };
    L_0x00be:
        r2 = r12;
    L_0x00bf:
        r3 = r11 + r2;
        r3 = r3 + r4;
        r0 = r18;
        r4 = r0.s;
        r7 = (float) r15;
        r8 = (float) r11;
        r9 = (float) r5;
        r2 = r3 - r2;
        r2 = (float) r2;
        r4.set(r7, r8, r9, r2);
        r0 = r18;
        r2 = r0.q;
        r0 = r18;
        r4 = r0.s;
        r2.set(r4);
        r0 = r18;
        r2 = r0.q;
        a(r2, r6, r6);
        r0 = r18;
        r2 = r0.s;
        r0 = r18;
        r0.r = r2;
        r2 = r3;
    L_0x00ea:
        r0 = r18;
        r3 = r0.t;
        r4 = 0;
        r0 = r18;
        r6 = r0.r;
        r6 = r6.bottom;
        r5 = (float) r5;
        r7 = (float) r2;
        r3.set(r4, r6, r5, r7);
        r0 = r18;
        r0.setMeasuredDimension(r10, r2);
        goto L_0x0018;
    L_0x0101:
        r0 = r18;
        r2 = r0.h;
        r9 = r2;
        goto L_0x0076;
    L_0x0108:
        r4 = r18.getSuggestedMinimumWidth();
        r7 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r6 != r7) goto L_0x022c;
    L_0x0110:
        r2 = java.lang.Math.min(r4, r2);
        r10 = r2;
        goto L_0x0085;
    L_0x0117:
        r3 = 2;
        if (r2 == r3) goto L_0x011d;
    L_0x011a:
        r3 = 3;
        if (r2 != r3) goto L_0x00be;
    L_0x011d:
        r2 = 0;
        r8 = (double) r6;
        r8 = java.lang.Math.ceil(r8);
        r3 = (int) r8;
        r11 = java.lang.Math.max(r2, r3);
        r2 = r12;
        goto L_0x00bf;
    L_0x012a:
        r3 = 2;
        if (r2 == r3) goto L_0x0130;
    L_0x012d:
        r3 = 3;
        if (r2 != r3) goto L_0x0229;
    L_0x0130:
        r2 = 0;
        r8 = (double) r6;
        r8 = java.lang.Math.ceil(r8);
        r3 = (int) r8;
        r2 = java.lang.Math.max(r2, r3);
    L_0x013b:
        r3 = r12 / 2;
        r11 = r2;
        r2 = r3;
        goto L_0x00bf;
    L_0x0140:
        r11 = r11 / 2;
        r2 = r12 / 2;
        goto L_0x00bf;
    L_0x0146:
        r11 = r11 / 2;
        r2 = r12;
        goto L_0x00bf;
    L_0x014b:
        r3 = 2;
        if (r2 == r3) goto L_0x0151;
    L_0x014e:
        r3 = 3;
        if (r2 != r3) goto L_0x0160;
    L_0x0151:
        r2 = 0;
        r0 = (double) r6;
        r16 = r0;
        r16 = java.lang.Math.ceil(r16);
        r0 = r16;
        r3 = (int) r0;
        r11 = java.lang.Math.max(r2, r3);
    L_0x0160:
        switch(r13) {
            case 1: goto L_0x0165;
            case 2: goto L_0x01a6;
            case 3: goto L_0x01e9;
            default: goto L_0x0163;
        };
    L_0x0163:
        r2 = r4;
        goto L_0x00ea;
    L_0x0165:
        r2 = r4 + r11;
        r0 = r18;
        r3 = r0.s;
        r4 = (float) r15;
        r7 = (float) r11;
        r8 = (float) r5;
        r11 = (float) r2;
        r3.set(r4, r7, r8, r11);
        r0 = r18;
        r3 = r0.q;
        r0 = r18;
        r4 = r0.s;
        r4 = r4.left;
        r0 = r18;
        r7 = r0.s;
        r7 = r7.top;
        r0 = r18;
        r8 = r0.s;
        r8 = r8.right;
        r0 = r18;
        r11 = r0.s;
        r11 = r11.bottom;
        r12 = 1090519040; // 0x41000000 float:8.0 double:5.38787994E-315;
        r11 = r11 + r12;
        r3.set(r4, r7, r8, r11);
        r0 = r18;
        r3 = r0.q;
        a(r3, r6, r6);
        r0 = r18;
        r3 = r0.s;
        r0 = r18;
        r0.r = r3;
        r2 = r2 + r9;
        goto L_0x00ea;
    L_0x01a6:
        r0 = r18;
        r2 = r0.s;
        r3 = (float) r15;
        r7 = 0;
        r8 = (float) r5;
        r11 = (float) r4;
        r2.set(r3, r7, r8, r11);
        r0 = r18;
        r2 = r0.q;
        r0 = r18;
        r3 = r0.s;
        r3 = r3.left;
        r0 = r18;
        r7 = r0.s;
        r7 = r7.top;
        r8 = 1090519040; // 0x41000000 float:8.0 double:5.38787994E-315;
        r7 = r7 - r8;
        r0 = r18;
        r8 = r0.s;
        r8 = r8.right;
        r0 = r18;
        r11 = r0.s;
        r11 = r11.bottom;
        r12 = 1090519040; // 0x41000000 float:8.0 double:5.38787994E-315;
        r11 = r11 + r12;
        r2.set(r3, r7, r8, r11);
        r0 = r18;
        r2 = r0.q;
        a(r2, r6, r6);
        r0 = r18;
        r2 = r0.s;
        r0 = r18;
        r0.r = r2;
        r2 = r4 + r9;
        goto L_0x00ea;
    L_0x01e9:
        r0 = r18;
        r2 = r0.s;
        r3 = (float) r15;
        r7 = 0;
        r8 = (float) r5;
        r9 = (float) r4;
        r2.set(r3, r7, r8, r9);
        r0 = r18;
        r2 = r0.q;
        r0 = r18;
        r3 = r0.s;
        r3 = r3.left;
        r0 = r18;
        r7 = r0.s;
        r7 = r7.top;
        r8 = 1090519040; // 0x41000000 float:8.0 double:5.38787994E-315;
        r7 = r7 - r8;
        r0 = r18;
        r8 = r0.s;
        r8 = r8.right;
        r0 = r18;
        r9 = r0.s;
        r9 = r9.bottom;
        r2.set(r3, r7, r8, r9);
        r0 = r18;
        r2 = r0.q;
        a(r2, r6, r6);
        r0 = r18;
        r2 = r0.s;
        r0 = r18;
        r0.r = r2;
        r2 = r4 + r12;
        goto L_0x00ea;
    L_0x0229:
        r2 = r11;
        goto L_0x013b;
    L_0x022c:
        r10 = r4;
        goto L_0x0085;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.internal.android.widget.RoundedGroupedRowView.onMeasure(int, int):void");
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

    private void a(float[] fArr, RectF rectF) {
        if (fArr != null) {
            RectShape roundRectShape = new RoundRectShape(fArr, null, null);
            roundRectShape.resize(rectF.width(), rectF.height());
            this.p = roundRectShape;
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float[] fArr = null;
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            RectF rectF;
            if (childAt.getVisibility() == 0) {
                rectF = this.r;
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) childAt.getLayoutParams();
                childAt.layout(((int) rectF.left) + marginLayoutParams.leftMargin, ((int) rectF.top) + marginLayoutParams.topMargin, ((int) rectF.right) - marginLayoutParams.rightMargin, ((int) rectF.bottom) - marginLayoutParams.bottomMargin);
            }
            int i5 = this.m;
            boolean z2 = this.B;
            float f = this.c;
            RectF rectF2;
            RectF rectF3;
            if (z2) {
                float[] fArr2;
                RectShape rectShape;
                rectF2 = this.r;
                rectF3 = this.q;
                if (f > 0.0f) {
                    fArr2 = this.y;
                    rectShape = this.v;
                } else {
                    rectShape = this.u;
                    fArr2 = null;
                }
                rectShape.resize(rectF3.width(), rectF3.height());
                this.o = rectShape;
                a(fArr2, rectF2);
                return;
            }
            RectShape rectShape2;
            switch (i5) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    rectF2 = this.r;
                    rectF3 = this.q;
                    if (f > 0.0f) {
                        fArr = this.z;
                        rectShape2 = this.w;
                    } else {
                        rectShape2 = this.u;
                    }
                    rectShape2.resize(rectF3.width(), rectF3.height());
                    rectF2.set(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom);
                    this.o = rectShape2;
                    a(fArr, rectF2);
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    RectF rectF4 = this.q;
                    RectShape rectShape3 = this.u;
                    rectShape3.resize(rectF4.width(), rectF4.height());
                    this.o = rectShape3;
                    this.p = null;
                case Util.TYPE_OTHER /*3*/:
                    rectF2 = this.r;
                    if (f > 0.0f) {
                        fArr = this.A;
                        rectShape2 = this.x;
                    } else {
                        rectShape2 = this.u;
                    }
                    rectF = this.q;
                    rectShape2.resize(rectF.width(), rectF.height());
                    rectF2.set(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom);
                    this.o = rectShape2;
                    a(fArr, rectF2);
                default:
            }
        }
    }

    public void draw(Canvas canvas) {
        RectF rectF = this.r;
        int i = this.m;
        boolean z = this.B;
        Drawable background = getBackground();
        if (background != null) {
            background.setBounds(0, 0, getRight(), getBottom());
            background.draw(canvas);
        }
        if ((i != 0 || z) && rectF != null) {
            Paint paint = a;
            paint.setColor(this.l);
            canvas.drawRect(this.t, paint);
            int save = canvas.save(1);
            canvas.translate(this.q.left, this.q.top);
            paint.setColor(this.k);
            this.o.draw(canvas, paint);
            canvas.restoreToCount(save);
            if (!(this.C || z || (i != 1 && i != 2))) {
                paint.setColor(this.i);
                canvas.drawRect(rectF.left, rectF.bottom, rectF.right, ((float) this.h) + rectF.bottom, paint);
            }
            if (this.p != null) {
                Paint paint2 = b;
                int saveLayer = canvas.saveLayer(rectF, paint2, 20);
                canvas.save(1);
                canvas.translate(rectF.left, rectF.top);
                this.p.draw(canvas, paint2);
                canvas.restore();
                paint2.setXfermode(a.a);
                save = canvas.saveLayer(rectF, paint2, 16);
                super.draw(canvas);
                canvas.restoreToCount(save);
                canvas.restoreToCount(saveLayer);
                paint2.setXfermode(null);
                return;
            }
            i = canvas.save();
            canvas.clipRect(rectF);
            super.draw(canvas);
            canvas.restoreToCount(i);
            return;
        }
        super.draw(canvas);
    }

    private static void a(RectF rectF, float f, float f2) {
        rectF.set(rectF.left - f, rectF.top - f2, rectF.right + f, rectF.bottom + f2);
    }

    public void setSingle(boolean z) {
        if (z != this.B) {
            this.B = z;
            if (z) {
                this.m = 0;
            }
            requestLayout();
            return;
        }
        invalidate();
    }

    public void setStyle(int i) {
        if (i != this.m) {
            this.m = i;
            requestLayout();
        } else {
            invalidate();
        }
        this.C = false;
    }

    public void setGroupStyle(int i) {
        if (i != this.n) {
            this.n = i;
            requestLayout();
            return;
        }
        invalidate();
    }
}
