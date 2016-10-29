package tv.periscope.android.ui.chat;

import android.animation.Animator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class w extends o {
    final /* synthetic */ u a;

    w(u uVar) {
        this.a = uVar;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.d = true;
        this.a.c = null;
        this.a.b = null;
        this.a.a = null;
    }
}
