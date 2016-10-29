package defpackage;

import bga;
import bgb;
import bua;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.service.b;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.json.contacts.JsonContact;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.r;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bfz */
public abstract class bfz<T> extends b<t<T, cd>> {
    protected final int a;
    protected final int b;
    private final List<String> c;
    private final Map<String, ByteBuffer> g;
    private final bua h;

    protected abstract void a(e eVar);

    protected abstract String b();

    protected bfz(bga bga) {
        super(bga.a(bga), bfz.class.getName(), bga.b(bga));
        this.a = bga.c(bga);
        this.b = bga.d(bga);
        this.g = bga.e(bga);
        this.c = bga.f(bga);
        this.h = bua.a(bga.a(bga), bga.b(bga).g());
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"contacts", b()}).a(bgb.a(this.c));
        a(a);
        return a.a();
    }

    protected void a(List<JsonContact> list) {
        if (!CollectionUtils.b((Collection) list)) {
            r d = r.d();
            for (JsonContact jsonContact : list) {
                d.b(this.g.get((String) this.c.get(jsonContact.b - 1)), Long.valueOf(jsonContact.a));
            }
            this.h.a((Map) d.q());
        }
    }
}
