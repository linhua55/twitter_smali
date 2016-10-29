package tv.periscope.android.ui.love;

import android.animation.Animator;
import android.view.ViewGroup;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class h extends o {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ HeartView b;
    final /* synthetic */ f c;

    h(f fVar, ViewGroup viewGroup, HeartView heartView) {
        this.c = fVar;
        this.a = viewGroup;
        this.b = heartView;
    }

    public void onAnimationStart(Animator animator) {
        this.c.a.incrementAndGet();
    }

    public void onAnimationEnd(Animator animator) {
        this.c.d.post(new i(this));
        this.c.a.decrementAndGet();
    }
}
