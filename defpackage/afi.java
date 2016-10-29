package defpackage;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
/* renamed from: afi */
class afi extends d {
    final /* synthetic */ afh a;

    afi(afh afh) {
        this.a = afh;
    }

    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.a.f.start();
    }
}
