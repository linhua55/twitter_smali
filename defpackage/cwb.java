package defpackage;

import android.view.View;
import android.view.View.OnClickListener;
import rx.am;

/* compiled from: Twttr */
/* renamed from: cwb */
class cwb implements OnClickListener {
    final /* synthetic */ am a;
    final /* synthetic */ cwa b;

    cwb(cwa cwa, am amVar) {
        this.b = cwa;
        this.a = amVar;
    }

    public void onClick(View view) {
        if (!this.a.b()) {
            this.a.b_(view);
        }
    }
}
