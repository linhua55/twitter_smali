package defpackage;

import android.content.Context;
import com.twitter.android.people.az;
import com.twitter.database.lru.ac;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.json.people.JsonModule;
import com.twitter.model.json.people.JsonPeopleDiscoveryResponse;
import com.twitter.model.people.ag;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: akr */
public class akr extends b<t<JsonPeopleDiscoveryResponse, Void>> {
    public ag a;
    private final Map<String, String> b;
    private final ac<String, ag> c;

    protected /* synthetic */ c f() {
        return b();
    }

    public akr(Context context, Session session, Map<String, String> map, ac<String, ag> acVar) {
        super(context, akr.class.getName(), session);
        this.b = map;
        this.c = acVar;
    }

    protected d a() {
        e a = K().a(new Object[]{"people_discovery", "modules"}).a("has_ab_permission", buc.c(this.p, N().e)).a("supported_layouts", az.a()).a("layout_version", 2);
        for (Entry entry : this.b.entrySet()) {
            a.a((String) entry.getKey(), (String) entry.getValue());
        }
        return a.a();
    }

    protected t<JsonPeopleDiscoveryResponse, Void> b() {
        return v.a(JsonPeopleDiscoveryResponse.class, null);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<JsonPeopleDiscoveryResponse, Void> tVar) {
        if (aaVar.b()) {
            JsonPeopleDiscoveryResponse jsonPeopleDiscoveryResponse = (JsonPeopleDiscoveryResponse) tVar.b();
            if (jsonPeopleDiscoveryResponse != null) {
                a(jsonPeopleDiscoveryResponse.a);
                this.a = alf.a(jsonPeopleDiscoveryResponse);
                if (jsonPeopleDiscoveryResponse.b > 0) {
                    this.c.a(String.valueOf(this.b.hashCode()), this.a, this.a.c * 1000).a();
                }
            }
        }
    }

    private void a(List<JsonModule> list) {
        Collection c = cto.c(alo.b((List) list));
        List c2 = cto.c(alo.a((List) list));
        com.twitter.util.object.e.a(N());
        com.twitter.library.provider.e eVar = new com.twitter.library.provider.e(this.p.getContentResolver());
        S().a(c, N().c, 36, -1, false, true, false, null, false, eVar, false);
        S().a((Collection) c2, N().c, 40, 0, null, null, true, eVar);
        eVar.a();
    }
}
