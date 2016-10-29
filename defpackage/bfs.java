package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.model.av.n;

/* compiled from: Twttr */
/* renamed from: bfs */
public class bfs {
    private final Context a;
    private final Session b;

    public bfs(Context context, Session session) {
        this.a = context;
        this.b = session;
    }

    public bfr a(long j, n nVar) {
        return new bfr(this.a, this.b, j, nVar);
    }
}
