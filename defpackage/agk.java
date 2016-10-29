package defpackage;

import android.support.annotation.LayoutRes;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import com.twitter.util.d;
import crd;

/* compiled from: Twttr */
/* renamed from: agk */
public abstract class agk {
    private static final Interpolator c;
    protected final ViewGroup a;
    protected final int b;
    private ViewGroup d;
    private final ViewPropertyAnimatorListener e;
    private final ViewPropertyAnimatorListener f;
    private final View g;
    private final LayoutInflater h;

    protected abstract void a(ViewGroup viewGroup);

    static {
        c = crd.b();
    }

    public agk(View view, ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        this.e = new agl(this);
        this.f = new agm(this);
        this.g = view;
        this.a = viewGroup;
        this.h = layoutInflater;
        this.b = i;
    }

    public void c(@LayoutRes int i) {
        if (this.d == null) {
            this.d = (ViewGroup) this.h.inflate(i, this.a, false);
            a(this.d);
            this.a.addView(this.d);
        }
    }

    public void d(OnClickListener onClickListener) {
        this.a.setOnClickListener(onClickListener);
    }

    public void c() {
        a(true);
    }

    public void d() {
        a(false);
    }

    private void a(boolean z) {
        if (this.d != null) {
            this.d.measure(MeasureSpec.makeMeasureSpec(this.a.getWidth(), 1073741824), MeasureSpec.makeMeasureSpec(this.a.getHeight(), RtlSpacingHelper.UNDEFINED));
            int measuredHeight = this.d.getMeasuredHeight();
            int i = z ? 0 : measuredHeight;
            float f = z ? 0.94f : 1.0f;
            if (z) {
                this.d.setTranslationY((float) measuredHeight);
            }
            ViewCompat.animate(this.d).translationY((float) i).setDuration((long) this.b).setInterpolator(c).setListener(z ? this.e : this.f).withLayer().start();
            ViewCompat.animate(this.g).scaleX(f).scaleY(f).setDuration((long) this.b).setInterpolator(c).withLayer().start();
            if (z) {
                d.b(this.a, this.b);
            } else {
                d.a(this.a, this.b);
            }
        }
    }

    public boolean e() {
        return this.a.getVisibility() != 0 || this.d == null;
    }
}
