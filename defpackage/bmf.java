package defpackage;

import android.content.Context;
import bmc;
import cll;
import clx;
import com.twitter.library.client.Session;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bmf */
public class bmf extends atn<List<String>, List<cll>, bmc> {
    private final Context a;
    private final Session b;

    public bmf(Context context, Session session) {
        this.a = context;
        this.b = session;
    }

    protected List<cll> a(bmc bmc) {
        clx e = bmc.e();
        return e != null ? e.b : n.g();
    }

    protected bmc a(List<String> list) {
        if (list == null) {
            list = n.b((Object) "0:0");
        }
        return new bmc(this.a, this.b, list);
    }
}
