package defpackage;

import android.database.ContentObserver;
import com.twitter.util.h;
import cyr;

/* compiled from: Twttr */
/* renamed from: atm */
class atm implements cyr {
    final /* synthetic */ ContentObserver a;
    final /* synthetic */ atk b;

    atm(atk atk, ContentObserver contentObserver) {
        this.b = atk;
        this.a = contentObserver;
    }

    public void a() {
        h.a();
        this.b.b.b.unregisterContentObserver(this.a);
    }
}
