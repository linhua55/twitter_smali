package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.client.Session;
import com.twitter.library.service.c;
import com.twitter.library.service.q;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

/* compiled from: Twttr */
/* renamed from: bnz */
public abstract class bnz<T extends c> extends af<T> {
    public static final Collection<RequestMethod> b;
    public static final Collection<RequestMethod> c;
    public static final Collection<Integer> g;
    private final String h;

    static {
        b = Collections.singleton(RequestMethod.GET);
        c = Collections.singleton(RequestMethod.POST);
        g = Arrays.asList(new Integer[]{Integer.valueOf(500), Integer.valueOf(503)});
    }

    protected bnz(Context context, String str, Session session, boolean z, String str2) {
        super(context, str, session, new q(3, z ? c : b, g));
        this.h = str2;
    }

    public String e() {
        return "app:twitter_service:app_graph:" + this.h;
    }
}
