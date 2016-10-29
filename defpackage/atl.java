package defpackage;

import android.database.ContentObserver;
import android.os.Handler;
import rx.am;

/* compiled from: Twttr */
/* renamed from: atl */
class atl extends ContentObserver {
    final /* synthetic */ am a;
    final /* synthetic */ atk b;

    atl(atk atk, Handler handler, am amVar) {
        this.b = atk;
        this.a = amVar;
        super(handler);
    }

    public void onChange(boolean z) {
        if (!this.a.b()) {
            this.a.b_(null);
        }
    }
}
