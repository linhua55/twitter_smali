package com.twitter.library.network.narc;

import android.content.Context;
import com.twitter.config.AppConfig;
import com.twitter.config.a;
import com.twitter.library.network.narc.AppStateNARCEntry.AppState;
import com.twitter.library.network.narc.AppStateNARCEntry.AppStateType;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* compiled from: Twttr */
public class i {
    private static final String a;
    private static final SimpleDateFormat b;
    private static final h c;

    static {
        a = a.a() + ".narc.fileprovider";
        b = new SimpleDateFormat("'twitter_'yyyy-MM-dd-HHmmss'.narc'", Locale.US);
        c = new h();
    }

    public static void a(AppState appState, AppStateType appStateType, String str) {
        a(new AppStateNARCEntry(appState, appStateType, str));
    }

    public static void a(String str, String str2, Throwable th) {
        a(new c(str, str2, th));
    }

    public static void a(AbstractNARCEntry abstractNARCEntry) {
        c.a(abstractNARCEntry);
    }

    public static String a(Context context, boolean z) {
        String str = null;
        AppConfig m = AppConfig.m();
        if (m.a() || m.b()) {
            synchronized ("NARCLogger") {
                h b = c.b();
                j jVar = new j(context);
                if (!z) {
                    jVar.execute(new h[]{b});
                    str = j.a(jVar).getPath();
                } else if (jVar.a(b)) {
                    str = j.a(jVar).getPath();
                }
            }
        }
        return str;
    }

    public static h a() {
        h b;
        synchronized ("NARCLogger") {
            b = c.b();
        }
        return b;
    }
}
