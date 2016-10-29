package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: bgc */
public class bgc extends b<t> {
    protected /* synthetic */ c f() {
        return b();
    }

    public bgc(Context context, Session session) {
        super(context, bgc.class.getName(), session);
    }

    protected d a() {
        return K().a(new Object[]{"contacts", "destroy", "all"}).a(RequestMethod.POST).a();
    }

    protected t b() {
        return null;
    }
}
