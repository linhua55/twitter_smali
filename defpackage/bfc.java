package defpackage;

import android.content.Context;
import cfb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.ads.e;

/* compiled from: Twttr */
/* renamed from: bfc */
public class bfc extends b<bez> {
    protected /* synthetic */ c f() {
        return b();
    }

    public bfc(Context context, Session session) {
        super(context, bfc.class.getName(), session);
    }

    protected d a() {
        cfb.b("AdsAccountPermissionsRq", "Making an API call to fetch Ads Account permissions");
        return K().a(RequestMethod.a).a("ads", "campaigns", "account_permissions").a();
    }

    protected bez b() {
        return new bez();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bez bez) {
        super.a(httpOperation, aaVar, bez);
        if (httpOperation.j()) {
            e eVar = (e) bez.b();
            cfb.b("AdsAccountPermissionsRq", "Fetched Ads Account permissions: " + eVar);
            com.twitter.library.provider.e T = T();
            S().a(eVar, T);
            T.a();
        }
    }
}
