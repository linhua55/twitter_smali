package defpackage;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.service.t;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.n;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: bpj */
public class bpj extends af<as> {
    public final TwitterUser b;
    private int c;
    private int g;

    protected /* synthetic */ c f() {
        return b();
    }

    public bpj(Context context, Session session, TwitterUser twitterUser) {
        this(context, new ab(session), twitterUser);
    }

    public bpj(Context context, ab abVar, TwitterUser twitterUser) {
        super(context, bpj.class.getName(), abVar);
        this.b = twitterUser;
        a(new t());
    }

    protected boolean b(aa aaVar) {
        return (this.b == null || this.c == 0) ? false : true;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"friendships", "update"});
        a.a("user_id", this.b.c);
        a(a, "device", 1);
        a(a, "lifeline", 2);
        a(a, "retweets", 4);
        return a.a();
    }

    public String e() {
        return "app:twitter_service:follow:update";
    }

    private void a(e eVar, String str, int i) {
        if (a(i)) {
            eVar.a(str, c(i));
        }
    }

    private boolean a(int i) {
        return (this.c & i) != 0;
    }

    private boolean c(int i) {
        return (this.g & i) != 0;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            di S = S();
            com.twitter.library.provider.e T = T();
            long j = this.b.c;
            if (a(1)) {
                ab N = N();
                long j2 = N.c;
                if (c(1)) {
                    Collection b = n.b(this.b);
                    S.a(j, 16, T);
                    S.a(b, j2, 16, -1, null, T);
                    if (!cne.b(PushRegistration.a(this.p, N.e), AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY)) {
                        aaVar.a(1001);
                    }
                } else {
                    S.b(j, 16, T);
                    S.a(16, j2, j, T);
                    S.a(1, this.b.k);
                }
            }
            if (a(2)) {
                if (c(2)) {
                    S.a(j, (int) AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY, T);
                } else {
                    S.b(j, (int) AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY, T);
                }
            }
            if (a(4)) {
                if (c(4)) {
                    S.a(j, (int) AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY, T);
                } else {
                    S.b(j, (int) AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY, T);
                }
            }
            T.a();
        }
    }

    protected as b() {
        return as.a(30);
    }

    protected boolean d(com.twitter.internal.android.service.ab<aa> abVar) {
        if (super.d(abVar)) {
            return true;
        }
        aa aaVar = (aa) abVar.b();
        boolean z = aaVar.d() == 403 || aaVar.d() == 1001;
        return z;
    }

    public bpj a(int i, boolean z) {
        this.c |= i;
        if (z) {
            this.g |= i;
        } else {
            this.g &= i ^ -1;
        }
        return this;
    }
}
