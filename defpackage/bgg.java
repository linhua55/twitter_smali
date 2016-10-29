package defpackage;

import android.os.Bundle;
import bfz;
import cbx;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.json.contacts.JsonUploadAndMatchContactsResponse;

/* compiled from: Twttr */
/* renamed from: bgg */
public class bgg extends bfz<JsonUploadAndMatchContactsResponse> {
    private final boolean c;

    protected /* synthetic */ c f() {
        return e();
    }

    private bgg(bgi bgi) {
        super(bgi);
        this.c = bgi.a;
    }

    protected String b() {
        return "upload_and_match";
    }

    protected t<JsonUploadAndMatchContactsResponse, cd> e() {
        return v.a(JsonUploadAndMatchContactsResponse.class, cd.class);
    }

    protected void a(e eVar) {
        eVar.a("include_relationships", this.c);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<JsonUploadAndMatchContactsResponse, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.k()) {
            Bundle bundle = this.o;
            bundle.putInt("page", this.a);
            bundle.putInt("pages", this.b);
            JsonUploadAndMatchContactsResponse jsonUploadAndMatchContactsResponse = (JsonUploadAndMatchContactsResponse) tVar.b();
            if (jsonUploadAndMatchContactsResponse != null) {
                Object a = jsonUploadAndMatchContactsResponse.a();
                com.twitter.library.provider.e T = T();
                int a2 = S().a(a, N().c, cbx.a() ? 39 : 7, -1, null, null, true, T);
                T.a();
                bundle.putInt("count", a2);
                bundle.putInt("num_users", a.size());
                a(jsonUploadAndMatchContactsResponse.c);
            }
        }
    }
}
