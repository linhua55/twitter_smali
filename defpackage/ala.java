package defpackage;

import android.database.Cursor;
import aow;
import aoy;
import cdj;
import com.twitter.library.client.Session;
import com.twitter.library.provider.dh;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import java.io.IOException;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
/* renamed from: ala */
public class ala implements atf<Iterable<Long>, Map<Long, TwitterUser>> {
    private final atf<aow, Cursor> a;
    private final Session b;

    public /* synthetic */ o a_(Object obj) {
        return a((Iterable) obj);
    }

    public ala(atf<aow, Cursor> atf_aow__android_database_Cursor, Session session) {
        this.a = atf_aow__android_database_Cursor;
        this.b = session;
    }

    public o<Map<Long, TwitterUser>> a(Iterable<Long> iterable) {
        return this.a.a_(b(iterable)).g(new ald(this)).g(new alb(this));
    }

    aow b(Iterable<Long> iterable) {
        return new aoy().a(dh.a.buildUpon().appendQueryParameter("ownerId", String.valueOf(this.b.g())).build()).a("user_id" + di.a((Iterable) iterable)).a(cdj.a).a();
    }

    public void close() throws IOException {
        this.a.close();
    }
}
