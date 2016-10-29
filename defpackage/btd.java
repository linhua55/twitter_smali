package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.twitter.library.api.t;
import com.twitter.library.service.aa;
import com.twitter.library.service.e;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: btd */
public class btd {
    public static <T extends t> void a(aa aaVar, T t) {
        if (t.c() != null) {
            aaVar.c.putBundle("commerce_error_list_bundle", (Bundle) t.c());
        } else {
            aaVar.c.putBundle("commerce_error_list_bundle", bsv.a(aaVar, "commerce_bundle_errors"));
        }
    }

    public static void a(e eVar, Context context) {
        btd.a(eVar);
        String a = btd.a(context);
        if (aj.b(a)) {
            eVar.b(a);
        }
    }

    public static void a(e eVar) {
        eVar.a("commerce_api_version", "2");
    }

    public static String a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("debug_card_commerce_host_v2", null);
    }
}
