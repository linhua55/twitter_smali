package defpackage;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.moments.ui.fullscreen.t;

/* compiled from: Twttr */
/* renamed from: ahf */
class ahf implements OnClickListener {
    final /* synthetic */ t a;
    final /* synthetic */ ahd b;

    ahf(ahd ahd, t tVar) {
        this.b = ahd;
        this.a = tVar;
    }

    public void onClick(View view) {
        this.b.c.b(false);
        this.a.a(new ahg(this));
    }
}
