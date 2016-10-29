package defpackage;

import android.view.View;
import rx.am;
import rx.p;

/* compiled from: Twttr */
/* renamed from: cvy */
final class cvy implements p<View> {
    final /* synthetic */ View a;

    cvy(View view) {
        this.a = view;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super View> amVar) {
        amVar.a(new cvz(this.a, amVar));
    }
}
