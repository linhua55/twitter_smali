package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.android.trends.f;
import com.twitter.library.api.TwitterLocation;
import com.twitter.library.client.Session;
import com.twitter.util.collection.n;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: sy */
public class sy {
    private final Handler a;
    private final Context b;
    private final Session c;
    private Runnable d;
    private final long e;

    public sy(Context context, Session session, long j, Handler handler) {
        this.b = context.getApplicationContext();
        this.c = session;
        this.e = j;
        this.a = handler;
    }

    public synchronized void a(tb tbVar) {
        Context context = this.b;
        Session session = this.c;
        b();
        this.d = new sz(this, context, session, tbVar);
        this.a.postDelayed(this.d, this.e);
    }

    public List<TwitterLocation> a(String str) {
        Cursor query = this.b.getContentResolver().query(SuggestionsProvider.g, null, str, null, null);
        if (query == null) {
            return n.g();
        }
        List<TwitterLocation> arrayList = new ArrayList(query.getCount());
        try {
            if (query.moveToFirst()) {
                do {
                    arrayList.add(new TwitterLocation(query.getString(2), query.getLong(1)));
                } while (query.moveToNext());
            }
            query.close();
            return arrayList;
        } catch (Throwable th) {
            query.close();
        }
    }

    public boolean a() {
        return f.a(this.b, this.c, this.b.getResources().getConfiguration().locale);
    }

    public synchronized void b() {
        if (this.d != null) {
            this.a.removeCallbacks(this.d);
            this.d = null;
        }
    }
}
