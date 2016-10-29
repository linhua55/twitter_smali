package defpackage;

import android.database.Cursor;
import aow;
import aoy;
import com.twitter.library.client.Session;
import com.twitter.library.provider.dd;
import com.twitter.library.provider.di;
import com.twitter.model.core.Tweet;
import java.io.IOException;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
/* renamed from: akv */
public class akv implements atf<Iterable<Long>, Map<Long, Tweet>> {
    private final atf<aow, Cursor> a;
    private final Session b;

    public /* synthetic */ o a_(Object obj) {
        return a((Iterable) obj);
    }

    public akv(atf<aow, Cursor> atf_aow__android_database_Cursor, Session session) {
        this.a = atf_aow__android_database_Cursor;
        this.b = session;
    }

    public o<Map<Long, Tweet>> a(Iterable<Long> iterable) {
        return this.a.a_(b(iterable)).g(new aky(this)).g(new akw(this));
    }

    aow b(Iterable<Long> iterable) {
        return new aoy().a(dd.a.buildUpon().appendQueryParameter("ownerId", String.valueOf(this.b.g())).build()).a("status_groups_g_status_id" + di.a((Iterable) iterable)).a(cdg.a).a();
    }

    public void close() throws IOException {
        this.a.close();
    }
}
