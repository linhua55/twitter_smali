package defpackage;

import android.content.res.Resources;
import android.view.LayoutInflater;
import com.twitter.util.object.c;

/* compiled from: Twttr */
/* renamed from: ajo */
final class ajo implements c<afs> {
    final /* synthetic */ Resources a;
    final /* synthetic */ LayoutInflater b;

    ajo(Resources resources, LayoutInflater layoutInflater) {
        this.a = resources;
        this.b = layoutInflater;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public afs a() {
        return new afs(this.a, afq.a(this.b));
    }
}
