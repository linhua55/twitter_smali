package defpackage;

import android.content.Context;
import cbx;
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
import com.twitter.model.json.core.JsonTwitterCursorArray;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: bge */
public class bge extends b<t<JsonTwitterCursorArray, cd>> {
    private int a;
    private boolean b;
    private final String c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bge(Context context, Session session, String str) {
        super(context, bge.class.getName(), session);
        this.a = 100;
        this.b = true;
        this.c = str;
    }

    protected d a() {
        e a = K().a(RequestMethod.a).a("contacts", "users").a("include_relationships", this.b).a("count", (long) this.a);
        if (this.c != null) {
            a.a("cursor", this.c);
        }
        return a.a();
    }

    protected t<JsonTwitterCursorArray, cd> b() {
        return v.a(JsonTwitterCursorArray.class, cd.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<JsonTwitterCursorArray, cd> tVar) {
        if (httpOperation.k()) {
            JsonTwitterCursorArray jsonTwitterCursorArray = (JsonTwitterCursorArray) tVar.b();
            if (jsonTwitterCursorArray != null && jsonTwitterCursorArray.a != null) {
                Collection collection = jsonTwitterCursorArray.a;
                String str = jsonTwitterCursorArray.b;
                if (str != null) {
                    this.o.putString("next_cursor", str);
                }
                com.twitter.library.provider.e T = T();
                int a = S().a(collection, N().c, cbx.a() ? 39 : 7, -1, null, null, true, T);
                T.a();
                this.o.putInt("count", a);
            }
        }
    }
}
