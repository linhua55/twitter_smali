package defpackage;

import android.view.View;
import com.twitter.util.h;
import rx.am;
import rx.p;

/* compiled from: Twttr */
/* renamed from: cwa */
class cwa implements p<View> {
    private final View a;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    cwa(View view) {
        this.a = view;
    }

    public void a(am<? super View> amVar) {
        h.a();
        View view = this.a;
        view.setOnClickListener(new cwb(this, amVar));
        amVar.a(new cwc(this, view));
    }
}
