package tv.periscope.android.ui.chat;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

/* compiled from: Twttr */
class u implements Runnable {
    private View a;
    private j b;
    private ValueAnimator c;
    private boolean d;
    private boolean e;

    u(View view, j jVar) {
        this.a = view;
        this.b = jVar;
        this.c = a(view, jVar);
    }

    public void run() {
        b();
    }

    public boolean a() {
        return this.d;
    }

    public boolean b() {
        if (this.e || this.c == null || this.c.isStarted()) {
            return false;
        }
        this.c.start();
        this.e = true;
        return true;
    }

    public void c() {
        if (this.c != null) {
            this.c.cancel();
        }
        this.c = null;
        this.a = null;
        this.b = null;
    }

    private ValueAnimator a(View view, j jVar) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{jVar.a(), 0.0f});
        ofFloat.setDuration(jVar.b());
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new v(this, jVar, view));
        ofFloat.addListener(new w(this));
        return ofFloat;
    }

    public void a(long j) {
        if (this.c != null) {
            if (this.e) {
                long floatValue = (long) (((Float) this.c.getAnimatedValue()).floatValue() * ((float) j));
                this.c.removeAllListeners();
                this.c.removeAllUpdateListeners();
                this.c.cancel();
                this.b.a(floatValue);
                this.c = a(this.a, this.b);
                this.c.start();
                return;
            }
            this.c.setDuration(j);
        }
    }
}
