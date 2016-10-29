package defpackage;

import android.content.Context;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.o;

/* compiled from: Twttr */
/* renamed from: bmq */
public abstract class bmq extends o {
    private PromotedEvent a;
    private String b;

    protected abstract void a(e eVar);

    public bmq(Context context, String str, Session session) {
        super(context, str, session);
    }

    protected void a() {
        e t = t();
        a(t);
        t.a();
        if (this.b != null) {
            new bms(this.h, h(), this.a).b(this.b).P();
        }
    }

    public bmq a(String str) {
        this.b = str;
        return this;
    }

    public bmq a(PromotedEvent promotedEvent) {
        this.a = promotedEvent;
        return this;
    }
}
