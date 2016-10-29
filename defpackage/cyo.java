package defpackage;

import android.os.Handler;
import rx.t;
import rx.u;

/* compiled from: Twttr */
/* renamed from: cyo */
public final class cyo extends t {
    private final Handler b;

    cyo(Handler handler) {
        this.b = handler;
    }

    public u a() {
        return new cyp(this.b);
    }
}
