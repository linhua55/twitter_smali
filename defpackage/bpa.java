package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.TwitterUser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: bpa */
public class bpa extends b<as> {
    private final boolean a;
    private final long[] b;
    private HashMap<Long, Integer> c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bpa(Context context, Session session, long[] jArr) {
        this(context, session, jArr, false);
    }

    public bpa(Context context, Session session, long[] jArr, boolean z) {
        super(context, bpa.class.getName(), session);
        this.a = z;
        if (jArr != null && jArr.length > 100) {
            jArr = Arrays.copyOfRange(jArr, 0, 100);
        }
        this.b = jArr;
    }

    protected d a() {
        return K().a("friendships", "lookup").a("user_id", this.b).a();
    }

    protected as b() {
        return as.a(48);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            ArrayList arrayList = (ArrayList) asVar.b();
            HashMap hashMap = new HashMap();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                TwitterUser twitterUser = (TwitterUser) it.next();
                hashMap.put(Long.valueOf(twitterUser.c), Integer.valueOf(twitterUser.S));
            }
            this.c = hashMap;
            if (this.a) {
                e T = T();
                S().a(hashMap, T);
                T.a();
                return;
            }
            S().a(hashMap, null);
        }
    }

    public HashMap<Long, Integer> e() {
        return this.c;
    }
}
