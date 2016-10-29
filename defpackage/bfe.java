package defpackage;

import android.content.Context;
import android.location.Location;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.s;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bfe */
public class bfe extends af<t<Object, cd>> {
    private final String b;

    protected /* synthetic */ c f() {
        return b();
    }

    public bfe(Context context, Session session, Location location) {
        super(context, bfe.class.getName(), session);
        this.b = bvx.a(location);
        a(new k().a(new l(context)).a(new s()));
    }

    public String e() {
        return "geo:background_location_update:request:";
    }

    protected d a() {
        return K().a(RequestMethod.b).a("1.1").b("geo").a("background_location_update").b("Geolocation", this.b).a();
    }

    protected t<Object, cd> b() {
        return v.a(Object.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<Object, cd> tVar) {
        aaVar.a(httpOperation);
    }
}
