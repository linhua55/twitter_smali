package tv.periscope.android.ui.love;

import android.animation.Animator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class g extends o {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public void onAnimationStart(Animator animator) {
        this.a.b.add(animator);
    }

    public void onAnimationEnd(Animator animator) {
        this.a.b.remove(animator);
    }
}
