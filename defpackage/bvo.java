package defpackage;

import android.content.Context;
import ark;
import aru;
import asa;
import cfb;
import com.twitter.library.api.s;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bvo */
public class bvo {
    private static final Map<Long, String> a;

    static {
        a = new HashMap();
    }

    public static void a(Context context, long j) {
        String str = (String) a.get(Long.valueOf(j));
        if (str != null) {
            az.a(context).a(str, true);
            a.remove(Long.valueOf(j));
        }
    }

    public static synchronized void a(Context context, long j, String str, boolean z) {
        synchronized (bvo.class) {
            ast c = asr.c(j);
            if (!z && c.a()) {
                cfb.b("Server_FCP", "Fetching feature switches from server");
                bvo.a(context, j, str, c);
            }
        }
    }

    private static void a(Context context, long j, String str, ast ast) {
        aru b = aru.b();
        asa.a("fs:load:fetched_manifest", b, j, ark.m).i();
        asa.a("fs:fetch:fetch_not_load", b, j, ark.m).i();
        ast.b();
        a.put(Long.valueOf(j), az.a(context).a(new s(context, bg.a().b(j), str).k("Users never trigger FS fetches."), new bvp(j)));
    }
}
