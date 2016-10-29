package defpackage;

import android.content.Context;
import android.os.AsyncTask;
import cly;
import com.twitter.config.d;
import com.twitter.library.provider.di;
import com.twitter.util.concurrent.c;
import java.util.HashMap;

/* compiled from: Twttr */
/* renamed from: bzv */
public class bzv extends bzy<bzx, cly> {
    private static final HashMap<Long, bzv> c;
    private final Context d;
    private final long e;

    static {
        c = new HashMap();
    }

    bzv(Context context, long j) {
        this.d = context;
        this.e = j;
    }

    public static synchronized bzv a(Context context, long j) {
        bzv bzv;
        synchronized (bzv.class) {
            bzv = (bzv) c.get(Long.valueOf(j));
            if (bzv == null) {
                bzv = new bzv(context, j);
                c.put(Long.valueOf(j), bzv);
            }
        }
        return bzv;
    }

    public void a(long j, long j2, cly cly, bzx bzx) {
        a(j, cly, bzx, true);
        if (d.a("cards_kernel_persist_card_state")) {
            new c().a(AsyncTask.SERIAL_EXECUTOR).a(new bzw(this, di.a(this.d, this.e), j, j2, cly)).a();
        }
    }

    protected void a(bzx bzx, long j, cly cly) {
        bzx.a(j, cly);
    }
}
