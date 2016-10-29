package defpackage;

import android.content.Context;
import com.bluelinelabs.logansquare.LoganSquare;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.json.contacts.JsonContactIds;
import com.twitter.model.json.contacts.JsonDestroyContactResponse;
import com.twitter.util.collection.ImmutableList;
import java.io.IOException;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;

/* compiled from: Twttr */
/* renamed from: bgd */
public class bgd extends b<t<JsonDestroyContactResponse, cd>> {
    private final List<Long> a;
    private final long b;
    private final boolean c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bgd(Context context, Session session, List<Long> list, boolean z) {
        super(context, bgd.class.getName(), session);
        this.a = ImmutableList.a(list);
        this.b = session.g();
        this.c = z;
    }

    protected d a() {
        e a = K().a(RequestMethod.b).a("live_sync_request", this.c).a("contacts", "destroy");
        JsonContactIds jsonContactIds = new JsonContactIds();
        jsonContactIds.a = this.a;
        try {
            HttpEntity stringEntity = new StringEntity(LoganSquare.serialize(jsonContactIds), Util.UTF_8);
            stringEntity.setContentType("application/json");
            a.a(stringEntity);
        } catch (IOException e) {
        }
        return a.a();
    }

    protected t<JsonDestroyContactResponse, cd> b() {
        return v.a(JsonDestroyContactResponse.class, cd.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        if (httpOperation.k()) {
            bua.a(this.p, this.b).a(this.a);
        }
    }
}
