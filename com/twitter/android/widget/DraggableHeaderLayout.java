package com.twitter.android.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.OvershootInterpolator;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.mx;
import com.twitter.internal.android.widget.RectLayoutParams;
import com.twitter.util.math.b;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
public class DraggableHeaderLayout extends ViewGroup {
    private static final AnchorMode[] a;
    private final int b;
    private final int c;
    private final int d;
    private View e;
    private View f;
    private int g;
    private AnchorMode h;
    private int i;
    private int j;
    private int k;
    private int l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private boolean r;

    /* compiled from: Twttr */
    public enum AnchorMode {
        FROM_TOP(0),
        FROM_BOTTOM(1);
        
        final int mNativeInt;

        private AnchorMode(int i) {
            this.mNativeInt = i;
        }
    }

    static {
        a = new AnchorMode[]{AnchorMode.FROM_TOP, AnchorMode.FROM_BOTTOM};
    }

    public DraggableHeaderLayout(Context context) {
        this(context, null, 2130772001);
    }

    public DraggableHeaderLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130772001);
    }

    public DraggableHeaderLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.p = Cue.TYPE_UNSET;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.DraggableHeaderLayout, i, 0);
        this.b = obtainStyledAttributes.getResourceId(0, 2131951665);
        this.c = obtainStyledAttributes.getResourceId(1, 2131951634);
        this.g = obtainStyledAttributes.getDimensionPixelSize(2, 100000);
        this.h = a[obtainStyledAttributes.getInt(3, 0)];
        this.i = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.j = obtainStyledAttributes.getDimensionPixelSize(5, getResources().getDimensionPixelSize(2131689922));
        this.k = obtainStyledAttributes.getDimensionPixelSize(6, Integer.MAX_VALUE);
        this.l = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.m = obtainStyledAttributes.getBoolean(8, false);
        this.d = ViewConfiguration.get(context).getScaledTouchSlop();
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() != 2) {
            throw new IllegalStateException("DraggableHeaderLayout must contain exactly two children");
        }
        this.e = findViewById(this.b);
        if (this.e == null) {
            throw new IllegalStateException("DraggableHeaderLayout must have a header view");
        }
        this.f = findViewById(this.c);
        if (this.f == null) {
            throw new IllegalStateException("DraggableHeaderLayout must have a body view");
        }
    }

    public void setMaxHeaderHeight(int i) {
        this.g = i;
        requestLayout();
    }

    public void setAnchorMode(AnchorMode anchorMode) {
        this.h = anchorMode;
        requestLayout();
    }

    public void setAnchorOffset(int i) {
        this.i = i;
        requestLayout();
    }

    public void setMinVisibleHeaderHeight(int i) {
        this.j = i;
        requestLayout();
    }

    public void setMaxVisibleHeaderHeight(int i) {
        this.k = i;
        requestLayout();
    }

    public void setExtraBodyHeight(int i) {
        this.l = i;
        requestLayout();
    }

    public void setSnapBackOnRelease(boolean z) {
        this.m = z;
    }

    public int getVisibleHeaderHeight() {
        return this.e.getBottom();
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size2);
        int i4 = (this.m && (this.n || this.r)) ? 1 : 0;
        View view = this.e;
        if (i4 == 0) {
            measureChildWithMargins(view, MeasureSpec.makeMeasureSpec(size, C.ENCODING_PCM_32BIT), 0, MeasureSpec.makeMeasureSpec(this.g, Cue.TYPE_UNSET), 0);
        }
        int measuredHeight = view.getMeasuredHeight();
        switch (an.a[this.h.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                i3 = measuredHeight - this.i;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                i3 = this.i;
                break;
            default:
                i3 = 0;
                break;
        }
        int a = b.a(i3, b.a(this.j, 0, measuredHeight), b.a(this.k, 0, measuredHeight));
        View view2 = this.f;
        i3 = Math.max(size2 - a, 0);
        if (i4 != 0) {
            i3 += this.l;
        }
        if (i4 == 0 || view2.getMeasuredHeight() < i3) {
            measureChildWithMargins(view2, MeasureSpec.makeMeasureSpec(size, C.ENCODING_PCM_32BIT), 0, MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT), 0);
        }
        a(view, 0, a - measuredHeight);
        a(view2, 0, a);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            RectLayoutParams rectLayoutParams = (RectLayoutParams) childAt.getLayoutParams();
            childAt.layout(rectLayoutParams.a, rectLayoutParams.b, rectLayoutParams.c, rectLayoutParams.d);
        }
    }

    protected RectLayoutParams a(View view, int i, int i2) {
        RectLayoutParams rectLayoutParams = (RectLayoutParams) view.getLayoutParams();
        rectLayoutParams.a(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
        return rectLayoutParams;
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new RectLayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new RectLayoutParams(layoutParams);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new RectLayoutParams(-1, -1);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return (layoutParams instanceof RectLayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.r) {
            return true;
        }
        switch (motionEvent.getAction()) {
            case Util.TYPE_DASH /*0*/:
                int y = (int) motionEvent.getY();
                this.p = y;
                if (y <= this.e.getBottom()) {
                    return true;
                }
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Util.TYPE_OTHER /*3*/:
                this.n = false;
                return false;
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.r) {
            int y = (int) motionEvent.getY();
            switch (motionEvent.getAction()) {
                case Util.TYPE_DASH /*0*/:
                    a(motionEvent);
                    this.o = y;
                    this.p = y;
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Util.TYPE_OTHER /*3*/:
                    this.o = Cue.TYPE_UNSET;
                    this.p = Cue.TYPE_UNSET;
                    if (this.n) {
                        motionEvent.setAction(3);
                        if (this.m) {
                            a();
                        }
                    }
                    a(motionEvent);
                    this.n = false;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    int i = y - this.o;
                    this.o = y;
                    if (!this.n) {
                        if (Math.abs(y - this.p) > this.d) {
                            this.n = true;
                            this.q = this.i;
                            motionEvent.setAction(3);
                        }
                        a(motionEvent);
                    }
                    if (this.n) {
                        y = a(i);
                        if (y != 0) {
                            if (i > 0) {
                                r.b(getContext(), this.e, false);
                            }
                            b(y);
                            break;
                        }
                    }
                    break;
                default:
                    break;
            }
        }
        return true;
    }

    private void a(MotionEvent motionEvent) {
        motionEvent.setLocation(motionEvent.getX(), motionEvent.getY() - ((float) this.e.getTop()));
        this.e.dispatchTouchEvent(motionEvent);
    }

    private int a(int i) {
        int measuredHeight = this.e.getMeasuredHeight();
        int bottom = this.e.getBottom();
        return b.a(bottom + i, b.a(this.j, 0, measuredHeight), b.a(this.k, 0, measuredHeight)) - bottom;
    }

    private void b(int i) {
        switch (an.a[this.h.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.i -= i;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.i += i;
                break;
        }
        requestLayout();
    }

    private void a() {
        this.r = true;
        ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{this.i, this.q});
        ofInt.setDuration(300);
        ofInt.setInterpolator(new OvershootInterpolator(1.5f));
        ofInt.addUpdateListener(new al(this));
        ofInt.addListener(new am(this));
        ofInt.start();
    }
}
