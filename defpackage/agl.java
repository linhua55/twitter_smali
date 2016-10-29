package defpackage;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

/* compiled from: Twttr */
/* renamed from: agl */
class agl extends ViewPropertyAnimatorListenerAdapter {
    static final /* synthetic */ boolean a;
    final /* synthetic */ agk b;

    static {
        a = !agk.class.desiredAssertionStatus();
    }

    agl(agk agk) {
        this.b = agk;
    }

    public void onAnimationStart(View view) {
        if (a || this.b.d != null) {
            this.b.d.setVisibility(0);
            return;
        }
        throw new AssertionError();
    }
}
