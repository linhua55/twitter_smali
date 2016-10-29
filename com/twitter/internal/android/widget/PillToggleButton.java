package com.twitter.internal.android.widget;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.Checkable;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.h;
import com.twitter.util.object.e;
import defpackage.bcu;
import defpackage.bdd;

/* compiled from: Twttr */
public class PillToggleButton extends TypefacesTextView implements OnClickListener, Checkable {
    private final RectF a;
    private final Paint b;
    private final Drawable c;
    private final Drawable d;
    private final Drawable e;
    private final float f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final float k;
    private OnClickListener l;
    private boolean m;
    private int n;
    private int o;
    private float p;
    private final TransitionDrawable q;

    public PillToggleButton(Context context) {
        this(context, null);
    }

    public PillToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PillToggleButton(Context context, AttributeSet attributeSet, int i) {
        float f = 0.0f;
        super(context, attributeSet, i);
        this.a = new RectF();
        this.b = new Paint();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, bdd.PillToggleButton, i, 0);
        this.f = obtainStyledAttributes.getDimension(bdd.PillToggleButton_borderStrokeWidth, 0.0f);
        this.g = obtainStyledAttributes.getColor(bdd.PillToggleButton_unselectedBorderColor, 0);
        this.h = obtainStyledAttributes.getColor(bdd.PillToggleButton_unselectedTextColor, 0);
        this.i = obtainStyledAttributes.getColor(bdd.PillToggleButton_selectedBackgroundColor, 0);
        this.j = obtainStyledAttributes.getColor(bdd.PillToggleButton_selectedTextColor, 0);
        int resourceId = obtainStyledAttributes.getResourceId(bdd.PillToggleButton_checkDrawable, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(bdd.PillToggleButton_plusDrawable, 0);
        obtainStyledAttributes.recycle();
        this.e = new ColorDrawable(0);
        this.q = new TransitionDrawable(new Drawable[]{this.e, this.e});
        this.q.setId(0, 100);
        this.q.setId(1, Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        this.q.setCrossFadeEnabled(true);
        if (resourceId > 0) {
            this.c = ContextCompat.getDrawable(context, resourceId);
            f = ((float) (this.c.getIntrinsicWidth() + getCompoundDrawablePadding())) / 2.0f;
            this.q.setBounds(0, 0, this.c.getIntrinsicWidth(), this.c.getIntrinsicHeight());
        } else {
            this.c = null;
        }
        if (resourceId2 > 0) {
            this.d = ContextCompat.getDrawable(context, resourceId2);
            f = ((float) (this.d.getIntrinsicWidth() + getCompoundDrawablePadding())) / 2.0f;
            this.q.setBounds(0, 0, this.d.getIntrinsicWidth(), this.d.getIntrinsicHeight());
        } else {
            this.d = null;
        }
        this.k = f;
        if (!(this.c == null || this.d == null)) {
            boolean z;
            if (this.c.getIntrinsicWidth() == this.d.getIntrinsicWidth()) {
                z = true;
            } else {
                z = false;
            }
            h.a(z, "Both icons must be the same width.");
        }
        setCompoundDrawables(null, null, this.q, null);
        int ceil = (int) Math.ceil((double) (this.f / 2.0f));
        setPadding(getPaddingLeft() + ceil, getPaddingTop() + ceil, getPaddingRight() + ceil, ceil + getPaddingBottom());
        f();
        c();
        f();
        this.b.setAntiAlias(true);
        super.setOnClickListener(this);
    }

    public void a() {
        e.a(this.c);
        e();
        a(this.c);
    }

    public void b() {
        e.a(this.d);
        e();
        a(this.d);
    }

    public void c() {
        d();
        a(this.e);
    }

    private void d() {
        if (g()) {
            a(this.p, this.k);
        } else {
            setTextXOffset(this.k);
        }
    }

    private void e() {
        if (g()) {
            a(this.p, 0.0f);
        } else {
            setTextXOffset(0.0f);
        }
    }

    private void a(Drawable drawable) {
        int i = Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        this.q.setDrawableByLayerId(100, this.q.findDrawableByLayerId(Callback.DEFAULT_DRAG_ANIMATION_DURATION));
        this.q.setDrawableByLayerId(Callback.DEFAULT_DRAG_ANIMATION_DURATION, drawable);
        TransitionDrawable transitionDrawable = this.q;
        if (!g()) {
            i = 0;
        }
        transitionDrawable.startTransition(i);
    }

    private void a(float f, float f2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "textXOffset", new float[]{f, f2});
        ofFloat.setDuration(200);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.start();
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.a.set(0.0f, 0.0f, (float) getMeasuredWidth(), (float) getMeasuredHeight());
        int ceil = (int) Math.ceil((double) (this.f / 2.0f));
        this.a.inset((float) ceil, (float) ceil);
    }

    protected void onDraw(Canvas canvas) {
        a(canvas, this.n, Style.FILL);
        a(canvas, this.o, Style.STROKE);
        canvas.save();
        canvas.translate(this.p, 0.0f);
        super.onDraw(canvas);
        canvas.restore();
    }

    private void a(Canvas canvas, int i, Style style) {
        this.b.setColor(i);
        this.b.setStyle(style);
        this.b.setStrokeWidth(this.f);
        canvas.drawRoundRect(this.a, ((float) getHeight()) / 2.0f, ((float) getHeight()) / 2.0f, this.b);
    }

    public void onClick(View view) {
        if (this.l != null) {
            this.l.onClick(view);
        }
    }

    public void setChecked(boolean z) {
        if (this.m != z) {
            this.m = z;
            f();
            invalidate();
        }
    }

    private void f() {
        int i;
        int i2;
        int i3;
        if (this.m) {
            i = this.j;
            i2 = this.i;
            i3 = this.i;
        } else {
            i = this.h;
            i2 = ContextCompat.getColor(getContext(), bcu.app_background);
            i3 = this.g;
        }
        if (g()) {
            a("textColor", getCurrentTextColor(), i);
            a("pillColor", this.n, i2);
            a("strokeColor", this.o, i3);
            return;
        }
        setTextColor(i);
        setPillColor(i2);
        setStrokeColor(i3);
    }

    private boolean g() {
        return getWindowToken() != null && ViewCompat.isLaidOut(this);
    }

    private void a(String str, @ColorInt int i, @ColorInt int i2) {
        if (i != i2) {
            ObjectAnimator ofInt = ObjectAnimator.ofInt(this, str, new int[]{i, i2});
            ofInt.setDuration(200);
            ofInt.setEvaluator(new ArgbEvaluator());
            ofInt.start();
        }
    }

    private void setTextXOffset(float f) {
        this.p = f;
    }

    private void setStrokeColor(@ColorInt int i) {
        this.o = i;
    }

    private void setPillColor(@ColorInt int i) {
        this.n = i;
    }

    public boolean isChecked() {
        return this.m;
    }

    public void toggle() {
        setChecked(!isChecked());
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.l = onClickListener;
    }
}
