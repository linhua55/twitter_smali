package tv.periscope.android.ui.broadcast.moderator;

import android.animation.Animator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class d extends o {
    final /* synthetic */ ModeratorView a;

    d(ModeratorView moderatorView) {
        this.a = moderatorView;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.b.start();
    }
}
