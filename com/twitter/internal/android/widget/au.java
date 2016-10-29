package com.twitter.internal.android.widget;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import com.twitter.ui.widget.ax;
import com.twitter.util.aj;
import com.twitter.util.ui.a;
import com.twitter.util.ui.h;
import com.twitter.util.ui.r;
import defpackage.bct;
import defpackage.bdd;

/* compiled from: Twttr */
class au extends View {
    private static final TextPaint a;
    private static final int[] b;
    private Drawable A;
    private ValueAnimator B;
    private ValueAnimator C;
    private boolean D;
    private boolean E;
    private boolean F;
    private final boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private boolean O;
    private int P;
    private int Q;
    private final int c;
    private final int d;
    private final int e;
    private float f;
    private float g;
    private final Point h;
    private final Point i;
    private ColorStateList j;
    private ColorStateList k;
    private Typeface l;
    private Typeface m;
    private StaticLayout n;
    private CharSequence o;
    private StaticLayout p;
    private CharSequence q;
    private int r;
    private int s;
    private int t;
    private int u;
    private Drawable v;
    private Drawable w;
    private CharSequence x;
    private CharSequence y;
    private ah z;

    static {
        a = new TextPaint(1);
        b = new int[]{bct.state_collapsed};
    }

    au(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = new Point();
        this.i = new Point();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ToolBarHomeView, i, 0);
        a(obtainStyledAttributes);
        this.d = obtainStyledAttributes.getResourceId(bdd.ToolBarHomeView_numberBackground, 0);
        this.e = obtainStyledAttributes.getColor(bdd.ToolBarHomeView_numberColor, -16777216);
        this.c = (int) obtainStyledAttributes.getDimension(bdd.ToolBarHomeView_toolBarIconSpacing, (float) ((int) Math.ceil((double) (5.0f * context.getResources().getDisplayMetrics().density))));
        this.D = true;
        this.E = true;
        this.F = true;
        this.G = obtainStyledAttributes.getBoolean(bdd.ToolBarHomeView_iconVisibleWithUp, true);
        this.y = obtainStyledAttributes.getString(bdd.ToolBarHomeView_upIndicatorDescription);
        if (this.y == null) {
            this.y = TtmlNode.ANONYMOUS_REGION_ID;
        }
        a.a(this, 1);
        obtainStyledAttributes.recycle();
    }

    private void a(TypedArray typedArray) {
        this.f = typedArray.getDimension(bdd.ToolBarHomeView_textSize, 16.0f);
        this.g = typedArray.getDimension(bdd.ToolBarHomeView_subtitleTextSize, 30.0f);
        this.j = typedArray.getColorStateList(bdd.ToolBarHomeView_textColor);
        this.k = typedArray.getColorStateList(bdd.ToolBarHomeView_subtitleTextColor);
        int i = typedArray.getInt(bdd.ToolBarHomeView_titleTextStyle, 1);
        int i2 = typedArray.getInt(bdd.ToolBarHomeView_subtitleTextStyle, 0);
        this.I = typedArray.getBoolean(bdd.ToolBarHomeView_allCaps, false);
        if (this.j != null) {
            d();
        } else {
            this.r = -16777216;
            this.t = this.r;
        }
        if (this.k != null) {
            e();
        } else {
            this.s = -16777216;
            this.u = this.s;
        }
        Context context = getContext();
        this.l = ax.a(context).b(i);
        this.m = ax.a(context).b(i2);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.j != null && this.j.isStateful()) {
            d();
        }
        if (this.k != null && this.k.isStateful()) {
            e();
        }
        int[] drawableState = getDrawableState();
        if (this.v.isStateful()) {
            this.v.setState(drawableState);
        }
        if (this.A.isStateful()) {
            this.A.setState(drawableState);
        }
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.H) {
            mergeDrawableStates(onCreateDrawableState, b);
        }
        return onCreateDrawableState;
    }

    private void d() {
        int colorForState = this.j.getColorForState(getDrawableState(), 0);
        if (colorForState != this.r) {
            this.r = colorForState;
            this.t = colorForState;
            invalidate();
        }
    }

    private void e() {
        int colorForState = this.k.getColorForState(getDrawableState(), 0);
        if (colorForState != this.s) {
            this.s = colorForState;
            this.u = colorForState;
            invalidate();
        }
    }

    private int a(Drawable drawable, int i) {
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int a = r.a(intrinsicHeight, getMeasuredHeight());
        int intrinsicWidth = drawable.getIntrinsicWidth();
        drawable.setBounds(i, a, i + intrinsicWidth, intrinsicHeight + a);
        invalidateDrawable(drawable);
        return intrinsicWidth;
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return this.v == drawable || this.A == drawable || super.verifyDrawable(drawable);
    }

    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(getSuggestedMinimumHeight(), i2);
        int g = g();
        if (this.E && (this.n == null || this.p == null)) {
            if (this.n == null && this.o != null) {
                c(0);
            }
            if (this.p == null && this.q != null) {
                d(0);
            }
        }
        if (!(this.H || !this.E || this.n == null)) {
            g = this.p != null ? g + (this.c + Math.max(this.n.getWidth(), this.p.getWidth())) : g + (this.c + this.n.getWidth());
        }
        if (g > 0) {
            g += getPaddingLeft() + getPaddingRight();
        }
        setMeasuredDimension(g, defaultSize);
    }

    private void c(int i) {
        this.n = a(i, this.o, this.f, this.l);
        if (this.L) {
            j();
            this.L = false;
        }
    }

    private void d(int i) {
        this.p = a(i, this.q, this.g, this.m);
    }

    private StaticLayout a(int i, CharSequence charSequence, float f, Typeface typeface) {
        int f2 = f() - i;
        TextPaint textPaint = a;
        textPaint.setTextSize(f);
        textPaint.setTypeface(typeface);
        return new StaticLayout(charSequence, 0, charSequence.length(), textPaint, r.a(charSequence, textPaint), Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TruncateAt.END, f2);
    }

    private int f() {
        return ((getContext().getResources().getDisplayMetrics().widthPixels - g()) - this.v.getIntrinsicWidth()) - this.c;
    }

    private int g() {
        int i = 0;
        if (this.D && this.A != null) {
            i = 0 + this.A.getIntrinsicWidth();
        }
        if (!this.F) {
            return i;
        }
        if ((this.G || !this.D) && this.v != null) {
            return i + this.v.getIntrinsicWidth();
        }
        return i;
    }

    @TargetApi(21)
    private void a(int i, int i2) {
        if (h() && (getBackground() instanceof RippleDrawable)) {
            ((RippleDrawable) getBackground()).setHotspotBounds(0, 0, (this.c / 2) + i, i2);
        }
    }

    private boolean h() {
        return VERSION.SDK_INT >= 21;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        if (this.D && this.A != null) {
            paddingLeft += a(this.A, paddingLeft);
        }
        if (this.F && ((this.G || !this.D) && this.v != null)) {
            paddingLeft += a(this.v, paddingLeft);
        }
        if (paddingLeft > getPaddingLeft()) {
            a(paddingLeft, i5);
        }
        if (!this.H && this.E && this.n != null) {
            if (this.p != null) {
                paddingLeft += this.c;
                int i6 = this.h.y;
                this.h.set(paddingLeft, r.a(this.n.getHeight() + this.p.getHeight(), i5));
                this.i.set(0, this.n.getHeight());
                if (this.O) {
                    paddingLeft = i6 - this.h.y;
                    if (paddingLeft > 0) {
                        b(paddingLeft, 0);
                    }
                    this.O = false;
                    return;
                }
                return;
            }
            this.h.set(paddingLeft + this.c, r.a(this.n.getHeight(), i5));
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        TextPaint textPaint = a;
        if (this.D && this.A != null) {
            this.A.draw(canvas);
        }
        if (this.F && this.v != null) {
            this.v.draw(canvas);
        }
        if (!this.H && this.E && this.n != null) {
            textPaint.setTextSize(this.f);
            textPaint.setColor(this.K ? this.t : this.r);
            textPaint.setTypeface(this.l);
            int save = canvas.save(1);
            int i = this.M ? this.Q : 0;
            canvas.translate((float) this.h.x, (float) (this.h.y + i));
            this.n.draw(canvas);
            if (this.p != null) {
                textPaint.setTextSize(this.g);
                textPaint.setColor(this.K ? this.u : this.s);
                textPaint.setTypeface(this.m);
                canvas.translate((float) this.i.x, (float) (i + this.i.y));
                this.p.draw(canvas);
            }
            canvas.restoreToCount(save);
        }
    }

    public CharSequence getContentDescription() {
        CharSequence contentDescription = super.getContentDescription();
        if (aj.b(contentDescription)) {
            return contentDescription;
        }
        String str;
        contentDescription = null;
        if (aj.b(this.x)) {
            contentDescription = this.x;
        } else if (aj.b(this.o)) {
            contentDescription = this.o;
        }
        CharSequence charSequence = this.D ? this.y : TtmlNode.ANONYMOUS_REGION_ID;
        String str2 = TtmlNode.ANONYMOUS_REGION_ID;
        if (aj.b(contentDescription)) {
            str = str2 + contentDescription;
        } else {
            str = str2;
        }
        if (!aj.b(charSequence)) {
            return str;
        }
        if (aj.b(str)) {
            str = str + ". ";
        }
        return str + charSequence;
    }

    private void a(boolean z, int i) {
        if (this.B == null) {
            this.B = new ValueAnimator();
            this.B.setDuration(350);
            this.B.addListener(new av(this));
            this.B.addUpdateListener(new aw(this));
        } else if (this.B.isRunning()) {
            this.B.cancel();
        }
        this.K = true;
        if (z) {
            this.B.setIntValues(new int[]{i, 0});
        } else {
            this.B.setIntValues(new int[]{i, i()});
        }
        this.t = h.a(this.r, i);
        this.u = h.a(this.s, i);
        this.J = z;
    }

    private int i() {
        return Color.alpha(this.r);
    }

    public void a(CharSequence charSequence, boolean z) {
        if (!z) {
            a(charSequence);
        } else if (charSequence == null && this.n != null) {
            a(true, Color.alpha(this.t));
            this.B.start();
        } else if (charSequence == null) {
            this.n = null;
            this.o = null;
        } else if (this.n == null || !charSequence.equals(this.n.getText())) {
            int alpha;
            if (this.I) {
                this.o = com.twitter.util.a.a(charSequence);
            } else {
                this.o = charSequence;
            }
            if (this.K) {
                alpha = Color.alpha(this.t);
            } else {
                alpha = 0;
            }
            this.n = null;
            a(false, alpha);
            this.L = true;
            requestLayout();
        }
    }

    private void j() {
        if (!this.B.isRunning()) {
            this.B.start();
        }
    }

    private void k() {
        this.B.cancel();
    }

    private void b(int i, int i2) {
        if (this.C == null || !this.C.isRunning()) {
            c(i, i2);
            this.C.start();
        }
    }

    private void l() {
        this.C.cancel();
    }

    public void a(CharSequence charSequence) {
        Object obj = 1;
        if (this.K) {
            k();
        }
        if (charSequence == null) {
            if (this.n == null) {
                obj = null;
            }
            this.n = null;
            this.o = null;
        } else if (this.n == null || !charSequence.equals(this.n.getText())) {
            if (this.I) {
                this.o = com.twitter.util.a.a(charSequence);
            } else {
                this.o = charSequence;
            }
            this.n = null;
        } else {
            obj = null;
        }
        if (obj != null) {
            requestLayout();
        }
    }

    private void c(int i, int i2) {
        boolean z = true;
        if (this.C == null) {
            this.C = new ValueAnimator();
            this.C.setDuration(250);
            this.C.addListener(new ax(this));
            this.C.addUpdateListener(new ay(this));
        } else if (this.C.isRunning()) {
            this.C.cancel();
        }
        this.M = true;
        this.C.setIntValues(new int[]{i, i2});
        if (i2 <= i) {
            z = false;
        }
        this.N = z;
    }

    public CharSequence a() {
        return this.q;
    }

    public CharSequence b() {
        return this.o;
    }

    public void b(CharSequence charSequence, boolean z) {
        boolean z2 = true;
        if (!z) {
            b(charSequence);
        } else if (charSequence == null && this.p != null && this.n != null) {
            c(0, r.a(this.n.getHeight(), getBottom() - getTop()) - this.h.y);
            this.C.start();
        } else if (charSequence == null) {
            if (this.p == null) {
                z2 = false;
            }
            this.p = null;
            this.q = null;
            if (z2) {
                requestLayout();
            }
        } else if (this.p == null || !charSequence.equals(this.p.getText())) {
            if (this.q != null) {
                z2 = false;
            }
            if (this.I) {
                this.q = com.twitter.util.a.a(charSequence);
            } else {
                this.q = charSequence;
            }
            this.p = null;
            this.O = z2;
            this.N = false;
            requestLayout();
        }
    }

    public void b(CharSequence charSequence) {
        Object obj = 1;
        if (this.M) {
            l();
        }
        if (charSequence == null) {
            if (this.p == null) {
                obj = null;
            }
            this.p = null;
            this.q = null;
        } else if (this.p == null || !charSequence.equals(this.p.getText())) {
            if (this.I) {
                this.q = com.twitter.util.a.a(charSequence);
            } else {
                this.q = charSequence;
            }
            this.p = null;
        } else {
            obj = null;
        }
        if (obj != null) {
            requestLayout();
        }
    }

    public void c(CharSequence charSequence) {
        this.x = charSequence;
    }

    public void a(Drawable drawable) {
        if (drawable != this.v) {
            this.w = drawable;
            this.v = drawable;
            this.P = 0;
            requestLayout();
        }
    }

    public void a(int i) {
        if (this.n != null) {
            c(i);
        }
        if (this.p != null) {
            d(i);
        }
    }

    public void b(int i) {
        if (i != this.P) {
            if (i > 0) {
                CharSequence valueOf;
                Context context = getContext();
                if (i < 100) {
                    valueOf = String.valueOf(i);
                } else {
                    valueOf = "99+";
                }
                if (this.z == null) {
                    this.z = new ah(context);
                    this.z.a(this.e);
                    if (this.d != 0) {
                        this.z.a(context.getResources().getDrawable(this.d));
                    }
                }
                this.z.a(context, valueOf);
                this.v = this.z;
            } else {
                this.v = this.w;
            }
            this.P = i;
            requestLayout();
        }
    }

    public void b(Drawable drawable) {
        if (drawable != this.A) {
            this.A = drawable;
            requestLayout();
        }
    }

    public void a(boolean z) {
        if (z != this.D) {
            this.D = z;
            setClickable(z);
            requestLayout();
        }
    }

    public void b(boolean z) {
        if (z != this.E) {
            this.E = z;
            requestLayout();
        }
    }

    public void c(boolean z) {
        if (z != this.F) {
            this.F = z;
            requestLayout();
        }
    }

    public void d(boolean z) {
        if (this.H != z) {
            this.H = z;
            refreshDrawableState();
            requestLayout();
        }
    }

    public boolean c() {
        return this.H;
    }
}
