package defpackage;

import bmx;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.library.service.aa;
import com.twitter.util.concurrent.j;
import com.twitter.util.z;

/* compiled from: Twttr */
/* renamed from: wb */
public abstract class wb {
    public abstract j<?> a(c cVar, z<bmx> zVar);

    public abstract boolean a(c cVar);

    protected static boolean a(aa aaVar) {
        if (aaVar.b() || aaVar.d() == 403) {
            return true;
        }
        return false;
    }
}
