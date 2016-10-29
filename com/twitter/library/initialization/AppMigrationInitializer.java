package com.twitter.library.initialization;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.config.AppConfig;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.provider.di;
import com.twitter.util.c;
import defpackage.aof;
import java.util.List;

/* compiled from: Twttr */
public class AppMigrationInitializer extends aof<Void> {
    protected /* synthetic */ void a(Context context, Object obj) {
        b(context, (Void) obj);
    }

    protected /* synthetic */ boolean b(Context context, Object obj) {
        return a(context, (Void) obj);
    }

    protected int a() {
        return 0;
    }

    protected boolean a(Context context, Void voidR) {
        return bg.a().c().d();
    }

    protected void b(Context context, Void voidR) {
        int i;
        AppConfig m = AppConfig.m();
        SharedPreferences sharedPreferences = context.getSharedPreferences(m.h(), 0);
        int i2 = sharedPreferences.getInt("app_v", -1);
        if (AppConfig.m().p()) {
            i = m.i();
        } else {
            i = c.d(context);
        }
        if (i2 < i) {
            a(context);
            for (a aVar : d.a().c()) {
                if (aVar.b().a()) {
                    di.a(context, aVar.b().b()).c(null, null);
                }
            }
            sharedPreferences.edit().putInt("app_v", i).apply();
        }
    }

    private void a(Context context) {
        List<a> c = d.a().c();
        if (c.size() != 0) {
            String[] strArr = new String[]{"auto_clean", "antispam_last_poll_timestamp"};
            String[] strArr2 = new String[]{"notifications_follow_only", "connect_tab"};
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            Editor edit = defaultSharedPreferences.edit();
            Object obj = null;
            for (String str : strArr) {
                if (defaultSharedPreferences.contains(str)) {
                    long j = defaultSharedPreferences.getLong(str, 0);
                    for (a d : c) {
                        new l(context, d.d()).a().a(str, j).apply();
                    }
                    edit.remove(str);
                    obj = 1;
                }
            }
            for (String str2 : strArr2) {
                if (defaultSharedPreferences.contains(str2)) {
                    boolean z = defaultSharedPreferences.getBoolean(str2, false);
                    for (a d2 : c) {
                        new l(context, d2.d()).a().a(str2, z).apply();
                    }
                    edit.remove(str2);
                    obj = 1;
                }
            }
            if (obj != null) {
                edit.apply();
            }
        }
    }
}
