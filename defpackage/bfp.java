package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.av.MonetizationCategory;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bfp */
public class bfp extends b<bfq> {
    private final bfq a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bfp(Context context, Session session) {
        this(context, session, new bfq());
    }

    public bfp(Context context, Session session, bfq bfq) {
        super(context, bfp.class.getName(), session);
        this.a = bfq;
    }

    protected d a() {
        return K().a(RequestMethod.a).a("amplify/categories").a();
    }

    protected bfq b() {
        return this.a;
    }

    public List<MonetizationCategory> e() {
        return this.a.b();
    }
}
