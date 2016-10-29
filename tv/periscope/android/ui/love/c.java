package tv.periscope.android.ui.love;

import android.view.ViewGroup;
import android.view.animation.Animation;
import tv.periscope.android.view.n;

/* compiled from: Twttr */
class c extends n {
    final /* synthetic */ HeartView a;
    final /* synthetic */ ViewGroup b;
    final /* synthetic */ b c;

    c(b bVar, HeartView heartView, ViewGroup viewGroup) {
        this.c = bVar;
        this.a = heartView;
        this.b = viewGroup;
    }

    public void onAnimationStart(Animation animation) {
        this.c.d.add(this.a);
        this.c.c.incrementAndGet();
    }

    public void onAnimationEnd(Animation animation) {
        this.c.d.remove(this.a);
        this.c.e.post(new d(this));
        this.c.c.decrementAndGet();
    }
}
