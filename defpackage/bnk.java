package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.ab;
import com.twitter.model.timeline.aa;

/* compiled from: Twttr */
/* renamed from: bnk */
public class bnk extends bnn {
    private final long b;

    public bnk(Context context, Session session, long j, long j2, aa aaVar) {
        this(context, new ab(session), j, j2, aaVar);
    }

    public bnk(Context context, ab abVar, long j, long j2, aa aaVar) {
        super(context, abVar, bnk.class.getName(), j, 14, aaVar);
        this.b = j2;
    }

    protected String[] e() {
        return new String[]{"conversation", String.valueOf(this.b)};
    }

    protected String g() {
        return String.valueOf(this.b);
    }

    public boolean s() {
        return false;
    }

    public boolean t() {
        return x() == 1;
    }
}
