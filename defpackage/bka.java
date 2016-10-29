package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.o;
import com.twitter.model.core.TwitterUser;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: bka */
public class bka extends o {
    private final Collection<TwitterUser> a;

    public bka(Context context, Session session, Collection<TwitterUser> collection) {
        super(context, bka.class.getName(), session);
        this.a = collection;
    }

    protected void a() {
        s().a(this.a, h().c, 15, -1, null, null, true, null);
    }
}
