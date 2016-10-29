package tv.periscope.android.ui.broadcast;

import android.animation.Animator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class x extends o {
    final /* synthetic */ ChatComposer a;

    x(ChatComposer chatComposer) {
        this.a = chatComposer;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.p.setVisibility(4);
        this.a.h.setVisibility(0);
    }
}
