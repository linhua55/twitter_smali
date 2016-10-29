package defpackage;

import android.content.Context;
import aru;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: ass */
final class ass implements Callable<Void> {
    final /* synthetic */ Context a;
    final /* synthetic */ long b;
    final /* synthetic */ ciz c;

    ass(Context context, long j, ciz ciz) {
        this.a = context;
        this.b = j;
        this.c = ciz;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        asr.a(this.a, this.b, this.c, aru.b());
        return null;
    }
}
