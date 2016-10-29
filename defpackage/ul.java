package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;

/* compiled from: Twttr */
/* renamed from: ul */
public class ul {
    private final Context a;

    public ul(Context context) {
        this.a = context;
    }

    public uk a(Session session) {
        return new uk(this.a, session);
    }
}
