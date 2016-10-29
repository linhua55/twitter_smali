package tv.periscope.chatman;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class g implements Callable<Boolean> {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Boolean a() throws Exception {
        return Boolean.TRUE;
    }
}
