package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: bfl */
public class bfl extends bfn {
    public bfl(Context context, Session session) {
        super(context, bfl.class.getName(), session);
    }

    protected d a() {
        return K().a(RequestMethod.a).a("amplify/marketplace/defaults").a();
    }
}
