package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: byd */
public class byd extends b<t<cke, cd>> {
    private final List<Long> a;
    private cke b;

    protected /* synthetic */ c f() {
        return e();
    }

    public byd(Context context, int i, List<Long> list) {
        Context context2 = context;
        this(context2, "stickers", bg.a().c(), i, list);
    }

    protected byd(Context context, String str, Session session, int i, List<Long> list) {
        super(context, str, session, i);
        this.a = list;
    }

    protected final d a() {
        return b().a();
    }

    protected e b() {
        return K().a(RequestMethod.a).a("stickerprovider", "stickers").a("ids", this.a);
    }

    protected t<cke, cd> e() {
        return v.a(cke.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cke, cd> tVar) {
        if (httpOperation.k() && tVar != null) {
            this.b = (cke) tVar.b();
        }
    }

    public cke g() {
        return this.b;
    }
}
