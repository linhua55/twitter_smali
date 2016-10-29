package defpackage;

import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.support.v4.util.LruCache;

/* compiled from: Twttr */
/* renamed from: byz */
public class byz extends caz {
    private static final LruCache<String, Boolean> a;
    private AsyncTask<String, Void, Boolean> b;

    static {
        a = new LruCache(10);
    }

    public void a(String str) {
        Boolean bool = (Boolean) a.get(str);
        if (bool != null) {
            a(str, bool.booleanValue());
        } else if (this.b == null || this.b.getStatus() == Status.FINISHED) {
            this.b = new bza(this);
            this.b.execute(new String[]{str});
        }
    }
}
