package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bmk */
public class bmk extends b<as> {
    private String a;
    private String b;
    private int c;
    private long g;

    protected /* synthetic */ c f() {
        return b();
    }

    public bmk(Context context, Session session) {
        super(context, bmk.class.getName(), session);
    }

    public bmk(Context context, ab abVar) {
        super(context, bmk.class.getName(), abVar);
    }

    public bmk a(String str) {
        this.a = str;
        return this;
    }

    public bmk b(String str) {
        this.b = str;
        return this;
    }

    public bmk a(int i) {
        this.c = i;
        return this;
    }

    public bmk a(long j) {
        this.g = j;
        return this;
    }

    protected d a() {
        e a = K().a(new Object[]{"news", "top"});
        a.a("country_code", this.a);
        a.a("lang", this.b);
        a.a("max_results", (long) this.c);
        if (this.g > 0) {
            a.a("topic_id", this.g);
        }
        return a.a();
    }

    protected as b() {
        return as.a(100);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            List list = (List) asVar.b();
            com.twitter.library.provider.e T = T();
            S().a(N().c, list, this.a, this.b, this.g, true, T);
            T.a();
        }
    }
}
