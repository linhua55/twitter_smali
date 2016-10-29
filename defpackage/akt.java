package defpackage;

import android.content.Context;
import com.twitter.database.lru.ac;
import com.twitter.library.client.Session;
import com.twitter.model.people.ag;
import com.twitter.util.object.e;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: akt */
public class akt extends atn<Map<String, String>, ag, akr> {
    private final Context a;
    private final Session b;
    private final ac<String, ag> c;

    public akt(Context context, Session session, ac<String, ag> acVar) {
        this.a = context;
        this.b = session;
        this.c = acVar;
    }

    protected boolean a() {
        return true;
    }

    protected ag a(akr akr) {
        return (ag) e.a(akr.a);
    }

    protected akr a(Map<String, String> map) {
        return new akr(this.a, this.b, (Map) e.a((Object) map), this.c);
    }
}
