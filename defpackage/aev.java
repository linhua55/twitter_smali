package defpackage;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import com.twitter.util.ui.g;

/* compiled from: Twttr */
/* renamed from: aev */
class aev extends g {
    final /* synthetic */ ViewPropertyAnimatorCompat a;
    final /* synthetic */ String b;
    final /* synthetic */ aeu c;

    aev(aeu aeu, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, String str) {
        this.c = aeu;
        this.a = viewPropertyAnimatorCompat;
        this.b = str;
    }

    public void onAnimationEnd(View view) {
        this.a.setListener(null);
        this.c.c.setText(this.b);
        ViewCompat.animate(this.c.c).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(175).withLayer().setInterpolator(aeu.b).start();
    }
}
