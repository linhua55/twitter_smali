package defpackage;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

/* compiled from: Twttr */
/* renamed from: agm */
class agm extends ViewPropertyAnimatorListenerAdapter {
    static final /* synthetic */ boolean a;
    final /* synthetic */ agk b;

    static {
        a = !agk.class.desiredAssertionStatus();
    }

    agm(agk agk) {
        this.b = agk;
    }

    public void onAnimationEnd(View view) {
        if (a || this.b.d != null) {
            this.b.a.removeView(this.b.d);
            this.b.d = null;
            return;
        }
        throw new AssertionError();
    }
}
