package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import bbl;
import bbm;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.util.al;
import com.twitter.util.c;
import com.twitter.util.collection.MutableMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: bbo */
public class bbo implements bbm {
    private final Context a;
    private final Map<String, Long> b;
    private final Handler c;

    public bbo(Context context) {
        this.b = MutableMap.a();
        this.c = new Handler(Looper.getMainLooper());
        this.a = context;
    }

    public void a(bbl bbl, Map<String, Object> map) {
        bbo.a("Error (not fatal):", bbl.c());
        bbo.c(bbl, map);
        a(bbl);
    }

    public void b(bbl bbl, Map<String, Object> map) {
        bbo.a("Error (fatal):", bbl.c());
        bbo.c(bbl, map);
        a(bbl);
    }

    private static void c(bbl bbl, Map<String, Object> map) {
        for (Entry entry : bbl.a().entrySet()) {
            bbo.c(String.format("Error value: %s=%s", new Object[]{entry.getKey(), entry.getValue().toString()}));
        }
        for (Entry entry2 : map.entrySet()) {
            bbo.c(String.format("Extra value: %s=%s", new Object[]{entry2.getKey(), entry2.getValue().toString()}));
        }
    }

    private void a(bbl bbl) {
        String th = bbl.c().toString();
        if (!b(th)) {
            return;
        }
        if (c.a()) {
            a(th);
        } else {
            this.c.post(new bbp(this, th));
        }
    }

    private void a(String str) {
        Toast.makeText(this.a, String.format("%s: %s", new Object[]{"FYI, error logged", str}), 1).show();
    }

    private synchronized boolean b(String str) {
        boolean z;
        long b = al.b();
        Iterator it;
        try {
            if (!this.b.containsKey(str) || ((Long) this.b.get(str)).longValue() + HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS < b) {
                this.b.put(str, Long.valueOf(b));
                it = this.b.entrySet().iterator();
                while (it.hasNext()) {
                    if (((Long) ((Entry) it.next()).getValue()).longValue() + HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS < b) {
                        it.remove();
                    }
                }
                z = true;
            } else {
                it = this.b.entrySet().iterator();
                while (it.hasNext()) {
                    if (((Long) ((Entry) it.next()).getValue()).longValue() + HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS < b) {
                        it.remove();
                    }
                }
                z = false;
            }
        } catch (Throwable th) {
            Throwable th2 = th;
            it = this.b.entrySet().iterator();
            while (it.hasNext()) {
                if (((Long) ((Entry) it.next()).getValue()).longValue() + HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS < b) {
                    it.remove();
                }
            }
        }
        return z;
    }

    private static void c(String str) {
        Log.d("ErrorLogger", str);
    }

    private static void a(String str, Throwable th) {
        Log.d("ErrorLogger", str, th);
    }
}
