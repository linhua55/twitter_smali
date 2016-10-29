package defpackage;

import android.graphics.Bitmap;
import android.support.v7.graphics.Palette;
import rx.ak;
import rx.al;

/* compiled from: Twttr */
/* renamed from: agr */
final class agr implements ak<Palette> {
    final /* synthetic */ Bitmap a;

    agr(Bitmap bitmap) {
        this.a = bitmap;
    }

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    public void a(al<? super Palette> alVar) {
        alVar.a(new ags(this.a, alVar));
    }
}
