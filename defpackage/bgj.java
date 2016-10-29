package defpackage;

import bfz;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.json.contacts.JsonUploadContactsResponse;

/* compiled from: Twttr */
/* renamed from: bgj */
public class bgj extends bfz<JsonUploadContactsResponse> {
    private final boolean c;

    protected /* synthetic */ c f() {
        return e();
    }

    protected bgj(bgk bgk) {
        super(bgk);
        this.c = bgk.a;
    }

    protected String b() {
        return "upload";
    }

    protected t<JsonUploadContactsResponse, cd> e() {
        return v.a(JsonUploadContactsResponse.class, cd.class);
    }

    protected void a(e eVar) {
        if (this.c) {
            eVar.a("live_sync_request", true);
        }
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<JsonUploadContactsResponse, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.k()) {
            JsonUploadContactsResponse jsonUploadContactsResponse = (JsonUploadContactsResponse) tVar.b();
            if (jsonUploadContactsResponse != null) {
                a(jsonUploadContactsResponse.c);
            }
        }
    }
}
