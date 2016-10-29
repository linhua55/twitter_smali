package com.twitter.android.composer;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.IdRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.AccelerateInterpolator;
import com.twitter.android.mx;
import com.twitter.library.widget.ObservableScrollView;

/* compiled from: Twttr */
public class ComposerScrollView extends ObservableScrollView {
    boolean a;
    @IdRes
    private final int b;
    private final int c;
    private View d;

    public ComposerScrollView(Context context) {
        this(context, null);
    }

    public ComposerScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ComposerScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = true;
        this.c = getResources().getDimensionPixelSize(2131689822);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.ComposerScrollView, i, 0);
        this.b = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        setFillViewport(true);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.b != 0) {
            View findViewById = findViewById(this.b);
            this.d = findViewById;
            d();
            getViewTreeObserver().addOnPreDrawListener(new bk(this, findViewById));
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        d();
    }

    protected void a() {
        super.a();
        this.a = false;
    }

    protected void b() {
        super.b();
        if (this.d != null) {
            if (getScrollY() < (this.d.getVisibility() == 0 ? this.d.getMeasuredHeight() : 0)) {
                Animator duration = ObjectAnimator.ofInt(this, "scrollY", new int[]{getScrollY(), this.d.getVisibility() == 0 ? this.d.getMeasuredHeight() : 0}).setDuration(250);
                duration.setInterpolator(new AccelerateInterpolator(2.0f));
                duration.addListener(new bl(this));
                duration.start();
                return;
            }
            this.a = true;
        }
    }

    public void setHeaderVisible(boolean z) {
        int i = z ? 0 : 8;
        if (this.d != null && this.d.getVisibility() != i) {
            this.d.setVisibility(i);
            d();
            i = this.d.getMeasuredHeight();
            if (i != 0) {
                if (!z) {
                    i = -i;
                }
                scrollBy(0, i);
                smoothScrollBy(0, 0);
            }
        }
    }

    public boolean c() {
        return this.d != null && this.d.getVisibility() == 0 && getScrollY() < this.d.getHeight() - this.c;
    }

    private void d() {
        int i;
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (this.d == null || this.d.getVisibility() != 0) {
            i = 0;
        } else {
            if (this.d.getMeasuredHeight() == 0) {
                this.d.measure(MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), MeasureSpec.makeMeasureSpec(0, 0));
            }
            i = this.d.getMeasuredHeight();
        }
        i += measuredHeight;
        View childAt = getChildAt(0);
        childAt.setMinimumHeight(i);
        childAt.measure(MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), MeasureSpec.makeMeasureSpec(0, 0));
        childAt.layout(0, 0, measuredWidth, childAt.getMeasuredHeight());
    }
}
