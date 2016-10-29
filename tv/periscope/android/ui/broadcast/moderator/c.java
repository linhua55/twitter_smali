package tv.periscope.android.ui.broadcast.moderator;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import tv.periscope.android.view.o;

/* compiled from: Twttr */
class c extends o {
    final /* synthetic */ ObjectAnimator a;
    final /* synthetic */ ObjectAnimator b;
    final /* synthetic */ ModeratorView c;

    c(ModeratorView moderatorView, ObjectAnimator objectAnimator, ObjectAnimator objectAnimator2) {
        this.c = moderatorView;
        this.a = objectAnimator;
        this.b = objectAnimator2;
    }

    public void onAnimationStart(Animator animator) {
        this.c.m.setVisibility(0);
        this.c.m.setAlpha(1.0f);
        this.c.q.setVisibility(8);
        this.a.setFloatValues(new float[]{(float) this.c.i.getMeasuredHeight(), 0.0f});
        this.b.setFloatValues(new float[]{(this.c.e + this.c.f) + ((float) this.c.i.getMeasuredHeight()), 0.0f});
        this.c.k.setAlpha(1.0f);
        this.c.k.setVisibility(0);
        this.c.k.setY(0.0f);
        this.c.setCountdownTimerBackgroundAlpha(0.2f);
        this.c.o.setVisibility(0);
        this.c.n.setVisibility(0);
        this.c.p.setVisibility(0);
    }

    public void onAnimationEnd(Animator animator) {
        this.c.a(this.c.h);
    }
}
