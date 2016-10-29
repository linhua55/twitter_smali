package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.support.annotation.StyleRes;
import android.util.StateSet;

/* compiled from: Twttr */
/* renamed from: csl */
public class csl extends Drawable implements Callback, csi {
    public static final int[] a;
    private ColorStateList b;
    private float c;
    private float d;
    private int e;
    private int f;
    private int g;
    private int h;
    private csg i;
    private csg j;
    private int k;

    static {
        a = new int[]{16842910, 16842908};
    }

    public csl(Context context, @StyleRes int i) {
        Resources resources = context.getResources();
        this.c = resources.getDimension(crx.twitter_edit_text_stroke_width_normal);
        this.d = resources.getDimension(crx.twitter_edit_text_stroke_width_focused);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(i, cse.UnderlineDrawable);
        a(obtainStyledAttributes.getColorStateList(cse.UnderlineDrawable_android_color), obtainStyledAttributes.getDimensionPixelOffset(cse.UnderlineDrawable_android_left, 0), obtainStyledAttributes.getDimensionPixelOffset(cse.UnderlineDrawable_android_right, 0));
        obtainStyledAttributes.recycle();
    }

    private void a(ColorStateList colorStateList, int i, int i2) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.b = colorStateList;
        this.g = i;
        this.h = i2;
        this.i = new csg(0);
        this.j = new csg(0);
        this.i.setCallback(this);
        this.j.setCallback(this);
        this.j.a((csi) this);
        this.e = this.b.getDefaultColor();
        this.f = this.b.getColorForState(StateSet.WILD_CARD, 0);
        this.i.a(this.e);
        this.i.a(this.c);
        this.i.a(this.c);
    }

    public void draw(Canvas canvas) {
        this.i.draw(canvas);
        if (this.j.isRunning()) {
            this.j.draw(canvas);
        }
    }

    public boolean isStateful() {
        return true;
    }

    public void setAlpha(int i) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return 0;
    }

    public void invalidateDrawable(Drawable drawable) {
        if (getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }

    protected void onBoundsChange(Rect rect) {
        this.i.setBounds(rect.left + this.g, rect.top, rect.right - this.h, rect.bottom);
        this.j.setBounds(rect.left + this.g, rect.top, rect.right - this.h, rect.bottom);
    }

    public void a(csg csg, boolean z) {
        if (z) {
            this.i.a(this.j.c());
        }
        this.j.f();
        this.k = this.j.e();
    }

    public void a(int i) {
        this.k = i;
    }

    protected boolean onStateChange(int[] iArr) {
        return a(iArr);
    }

    private boolean a(int[] iArr) {
        float f = StateSet.stateSetMatches(a, iArr) ? this.d : this.c;
        this.i.a(f);
        this.j.a(f);
        int colorForState = this.b.getColorForState(iArr, 0);
        int c = this.j.c();
        int c2 = this.i.c();
        boolean isRunning = this.j.isRunning();
        if ((colorForState == c2 && !isRunning) || (isRunning && colorForState == c)) {
            return false;
        }
        int i = this.k;
        this.j.stop();
        this.j.b(i);
        if (d(colorForState)) {
            b(colorForState);
        } else {
            c(colorForState);
        }
        return true;
    }

    private void b(int i) {
        int c = this.i.c();
        this.i.a(i);
        if (!d(c)) {
            this.j.a(c);
            this.j.b(1.0f);
            this.j.b();
        }
    }

    private void c(int i) {
        this.j.a(i);
        this.j.b(0.0f);
        this.j.start();
    }

    private boolean d(int i) {
        return i == this.e || i == this.f;
    }
}
