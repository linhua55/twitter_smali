package defpackage;

import android.content.Context;
import com.twitter.internal.android.service.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;

/* compiled from: Twttr */
/* renamed from: bee */
public class bee extends x {
    protected final d a;
    private final String b;
    private final as c;
    private String g;

    public bee(Context context, String str) {
        super(context, bed.class.getName());
        this.b = str;
        this.c = as.a(54);
        this.a = new d();
    }

    public d m() {
        return this.a;
    }

    protected void a_(aa aaVar) {
        HttpOperation a = a(this.p, an.a(this.q.a, new Object[]{"1.1", "guest", "activate"}).append(".json")).a(RequestMethod.b).a(this.c).a(this.a).a();
        an.a(a, "Authorization", "Bearer " + this.b);
        if (a.c().k()) {
            this.g = (String) this.c.b();
        }
        aaVar.a(a);
    }

    public String a() {
        return this.g;
    }
}
