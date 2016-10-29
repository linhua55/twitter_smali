package com.twitter.android.av;

import com.twitter.library.av.c;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class bc implements Callable<Void> {
    final /* synthetic */ String a;
    final /* synthetic */ c b;
    final /* synthetic */ ba c;

    bc(ba baVar, String str, c cVar) {
        this.c = baVar;
        this.a = str;
        this.b = cVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        this.c.b(this.a, this.b);
        return null;
    }
}
