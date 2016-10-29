package tv.periscope.android.ui.broadcast;

import android.animation.Animator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class w extends o {
    final /* synthetic */ ChatComposer a;

    w(ChatComposer chatComposer) {
        this.a = chatComposer;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.h.setVisibility(4);
        this.a.p.setVisibility(0);
        this.a.c.requestFocus();
    }
}
