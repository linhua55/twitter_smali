package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.o;

/* compiled from: Twttr */
/* renamed from: blf */
public class blf extends o {
    private final String a;
    private final int b;

    public blf(Context context, Session session, String str, int i) {
        super(context, blf.class.getName(), session);
        this.a = str;
        this.b = i;
    }

    protected void a() {
        e t = t();
        s().a(new String[]{this.a}, this.b);
        t.a();
    }
}
