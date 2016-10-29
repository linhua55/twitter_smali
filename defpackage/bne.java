package defpackage;

import android.content.Context;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.l;
import com.twitter.library.service.ab;
import com.twitter.util.aj;
import com.twitter.util.m;

/* compiled from: Twttr */
/* renamed from: bne */
public final class bne {
    private final l a;

    public static bmy a(Context context, Session session, boolean z) {
        return bne.a(context, new ab(session), z);
    }

    public static synchronized bmy a(Context context, ab abVar, boolean z) {
        bmy bmy = null;
        synchronized (bne.class) {
            if (d.a("sync_blocked_users_enabled") && !aj.a(abVar.e)) {
                bne bne = new bne(context, abVar.e);
                if (bne.b(z)) {
                    bmy = (bmy) new bmy(context, abVar, bne).k("This is a sync request which was not triggered by a user action.");
                }
            }
        }
        return bmy;
    }

    bne(Context context, String str) {
        this.a = new l(context, str);
    }

    long a() {
        return this.a.getLong("block_sync_last_time", 0);
    }

    void a(long j) {
        this.a.a().a("block_sync_last_time", j).apply();
    }

    void a(boolean z) {
        this.a.a().a("block_sync_aggressive", z).apply();
    }

    void a(int i) {
        a(i > 200);
    }

    private boolean b() {
        return this.a.getBoolean("block_sync_aggressive", false);
    }

    private boolean b(boolean z) {
        int i;
        long b = m.b() - a();
        if (b()) {
            i = 4;
        } else {
            i = 1;
        }
        if (z) {
            if (b > 14400000 / ((long) i)) {
                return true;
            }
            return false;
        } else if (b <= 1200000 / ((long) i)) {
            return false;
        } else {
            return true;
        }
    }
}
