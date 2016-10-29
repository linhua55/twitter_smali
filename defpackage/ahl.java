package defpackage;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.moments.ui.fullscreen.hm;
import com.twitter.model.moments.x;

/* compiled from: Twttr */
/* renamed from: ahl */
class ahl implements OnClickListener {
    final /* synthetic */ hm a;
    final /* synthetic */ x b;
    final /* synthetic */ ahk c;

    ahl(ahk ahk, hm hmVar, x xVar) {
        this.c = ahk;
        this.a = hmVar;
        this.b = xVar;
    }

    public void onClick(View view) {
        this.a.a(this.b.b);
    }
}
