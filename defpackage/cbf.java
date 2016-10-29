package defpackage;

import android.content.Context;
import com.twitter.client_network.thriftandroid.ClientNetworkRequest;
import com.twitter.client_network.thriftandroid.ClientNetworkRequestDetails;
import com.twitter.client_network.thriftandroid.ClientNetworkResponseSource;
import com.twitter.client_network.thriftandroid.b;
import com.twitter.client_network.thriftandroid.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.j;
import com.twitter.internal.network.k;
import com.twitter.library.provider.cf;
import com.twitter.util.aj;
import java.net.URI;

/* compiled from: Twttr */
/* renamed from: cbf */
public class cbf {
    public static ClientNetworkRequest a(Context context, HttpOperation httpOperation) {
        b bVar = new b();
        bVar.a(ClientNetworkRequest.e, httpOperation.h().name()).a(ClientNetworkRequest.f, httpOperation.p().name());
        k l = httpOperation.l();
        bVar.a(ClientNetworkRequest.k, Integer.valueOf(l.a)).a(ClientNetworkRequest.i, l.q).a(ClientNetworkRequest.l, Integer.valueOf(l.j));
        if (l.c != null) {
            bVar.a(ClientNetworkRequest.m, l.c.getClass().getName());
        }
        URI i = httpOperation.i();
        bVar.a(ClientNetworkRequest.c, i.getHost()).a(ClientNetworkRequest.d, i.getPath()).a(ClientNetworkRequest.b, i.getScheme()).a(ClientNetworkRequest.r, i.getQuery());
        bVar.a(ClientNetworkRequest.o, cbf.b(httpOperation));
        bVar.a(ClientNetworkRequest.n, cbf.a(httpOperation));
        bVar.a(ClientNetworkRequest.h, cbf.a(context).c());
        bVar.a(ClientNetworkRequest.q, Boolean.valueOf(cbf.b(context)));
        return bVar.a();
    }

    private static ClientNetworkResponseSource a(HttpOperation httpOperation) {
        String b = httpOperation.b("x-cache");
        if (b == null) {
            return ClientNetworkResponseSource.ORIGIN;
        }
        if (b.contains("HIT")) {
            return ClientNetworkResponseSource.CDN;
        }
        return ClientNetworkResponseSource.CDN_UNKNOWN;
    }

    private static ClientNetworkRequestDetails b(HttpOperation httpOperation) {
        d dVar = new d();
        dVar.a(ClientNetworkRequestDetails.i, Long.valueOf(httpOperation.f()));
        k l = httpOperation.l();
        dVar.a(ClientNetworkRequestDetails.b, Long.valueOf(l.e)).a(ClientNetworkRequestDetails.c, Integer.valueOf(l.n));
        dVar.a(ClientNetworkRequestDetails.f, Long.valueOf(com.twitter.library.network.forecaster.b.a().e().longValue()));
        Object a = httpOperation.a("X-Response-Time");
        if (aj.b(a)) {
            dVar.a(ClientNetworkRequestDetails.k, Long.valueOf(Long.parseLong(a)));
        }
        return dVar.a();
    }

    public static cbh a(Context context) {
        return new cbh(context);
    }

    private static boolean b(Context context) {
        j a = cf.c(context).a();
        return a != null && a.b;
    }
}
