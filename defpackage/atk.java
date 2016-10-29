package defpackage;

import android.database.ContentObserver;
import android.net.Uri;
import com.twitter.util.h;
import dbl;
import rx.am;
import rx.p;

/* compiled from: Twttr */
/* renamed from: atk */
class atk implements p<Void> {
    final /* synthetic */ Uri a;
    final /* synthetic */ atj b;

    atk(atj atj, Uri uri) {
        this.b = atj;
        this.a = uri;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super Void> amVar) {
        h.a();
        ContentObserver atl = new atl(this, atj.a, amVar);
        this.b.b.registerContentObserver(this.a, false, atl);
        amVar.a(dbl.a(new atm(this, atl)));
    }
}
