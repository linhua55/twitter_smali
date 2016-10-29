package defpackage;

import android.content.Context;
import com.bluelinelabs.logansquare.LoganSquare;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.json.stratostore.JsonInterestSelections;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;

/* compiled from: Twttr */
/* renamed from: bnh */
public class bnh extends beb<as> {
    private final Session a;
    private final JsonInterestSelections b;

    protected /* synthetic */ c f() {
        return e();
    }

    public bnh(Context context, Session session, JsonInterestSelections jsonInterestSelections) {
        super(context, bnh.class.getName(), session);
        this.a = session;
        this.b = jsonInterestSelections;
    }

    protected e b() {
        e b = K().a(RequestMethod.POST).b(new Object[]{"strato", "column", "User", Long.valueOf(this.a.g()), "interestSelections"});
        try {
            HttpEntity stringEntity = new StringEntity(LoganSquare.serialize(this.b), "UTF-8");
            stringEntity.setContentType("application/json");
            b.a(stringEntity);
        } catch (Throwable e) {
            bbn.a(e);
        }
        return b;
    }

    protected as e() {
        return null;
    }
}
