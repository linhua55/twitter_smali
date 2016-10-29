package defpackage;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.support.annotation.ColorInt;

/* compiled from: Twttr */
/* renamed from: ago */
class ago implements cys<Integer> {
    final /* synthetic */ agn a;

    ago(agn agn) {
        this.a = agn;
    }

    public /* synthetic */ void call(@ColorInt Object obj) {
        a((Integer) obj);
    }

    public void a(@ColorInt Integer num) {
        this.a.e = num.intValue();
        ValueAnimator duration = ValueAnimator.ofInt(new int[]{this.a.e, this.a.c}).setDuration((long) this.a.a);
        duration.addUpdateListener(new agp(this));
        duration.setEvaluator(new ArgbEvaluator());
        this.a.f = duration;
        if (this.a.g) {
            this.a.b();
        }
    }
}
