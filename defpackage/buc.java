package defpackage;

import android.content.Context;
import btz;
import cbz;
import com.twitter.android.lf;
import com.twitter.config.d;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: buc */
public class buc {
    public static boolean a() {
        return cbx.a() && d.a("people_discovery_use_new_contacts_permission_prompt_for_all");
    }

    public static boolean a(Context context, String str) {
        return str != null && buc.a(context) && buc.c(context, str);
    }

    public static boolean a(Context context) {
        return lf.a().a(context, "android.permission.READ_CONTACTS");
    }

    public static void a(Context context, String str, int i) {
        l lVar = new l(context, str);
        cbz b = cbz.b();
        lVar.a().a("pref_contacts_live_sync_opt_in", i).apply();
        if (i == 0) {
            az.a(context).a(new btz(context, bg.a().c()));
            new cby(new l(context, str)).a(false);
        }
        if (b != null) {
            b.a();
        }
    }

    public static boolean a(Context context, boolean z) {
        if (!buc.a(context)) {
            return true;
        }
        boolean z2 = z && buc.b(context, (String) e.a(bg.a().c().e()));
        return z2;
    }

    public static boolean b(Context context, String str) {
        return buc.e(context, str) == 0;
    }

    public static boolean c(Context context, String str) {
        return buc.e(context, str) == 2;
    }

    public static boolean d(Context context, String str) {
        return buc.e(context, str) == 1;
    }

    private static int e(Context context, String str) {
        return new l(context, str).getInt("pref_contacts_live_sync_opt_in", 0);
    }
}
