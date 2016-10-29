package defpackage;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bog */
public class bog extends b<t<TwitterUser, cd>> {
    private long a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bog(Context context, Session session) {
        super(context, bog.class.getName(), session);
    }

    public bog a(long j) {
        this.a = j;
        return this;
    }

    protected d a() {
        return K().a(RequestMethod.POST).a(new Object[]{"friendships", "cancel"}).a("user_id", String.valueOf(this.a)).a();
    }

    protected t<TwitterUser, cd> b() {
        return v.a(TwitterUser.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<TwitterUser, cd> tVar) {
        if (httpOperation.k()) {
            e T = T();
            S().b(this.a, (int) AccessibilityNodeInfoCompat.ACTION_COPY, T);
            T.a();
        }
    }
}
