package defpackage;

import cfb;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.t;
import com.twitter.model.ads.e;
import com.twitter.model.json.ads.JsonAdsAccountPermission;
import com.twitter.model.json.common.j;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bez */
public class bez extends t<e, Void> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected Void b(JsonParser jsonParser, int i) throws IOException {
        cfb.d("AdsAccountPermissionRd", "Failed with parse error on status-code: " + i);
        return null;
    }

    protected e b(JsonParser jsonParser) throws IOException {
        return (e) j.a(JsonAdsAccountPermission.a(jsonParser));
    }
}
