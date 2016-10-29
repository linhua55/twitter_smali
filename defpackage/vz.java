package defpackage;

import android.content.Context;
import asp;
import bbl;
import bbn;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
/* renamed from: vz */
public class vz extends ad implements asp {
    private final Context a;

    public vz(Context context) {
        this.a = context;
    }

    public void a(long j) {
        if (j > 0) {
            try {
                if (vx.a()) {
                    vy.b(this.a, j);
                } else {
                    vy.c(j);
                }
            } catch (Throwable e) {
                bbn.a(new bbl(e));
            }
        }
    }

    public void a(Session session, boolean z) {
        vy.c(session.g());
    }
}
