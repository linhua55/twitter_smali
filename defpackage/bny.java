package defpackage;

import android.content.Context;
import bnz;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: bny */
public class bny extends bnz<as> {
    private final String h;
    private final String i;

    protected /* synthetic */ c f() {
        return b();
    }

    public bny(Context context, Session session, String str, String str2) {
        super(context, bny.class.getName(), session, true, "register");
        this.h = str;
        this.i = str2;
        k("Not triggered by a user action.");
    }

    protected d a() {
        return K().a(RequestMethod.b).a("graph", "app", "register").a("ids", this.h).a("tstamps", this.i).a();
    }

    protected as b() {
        return as.a(93);
    }
}
