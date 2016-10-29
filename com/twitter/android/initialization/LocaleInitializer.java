package com.twitter.android.initialization;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.twitter.config.AppConfig;
import com.twitter.library.network.an;
import com.twitter.util.a;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.w;
import defpackage.aof;
import java.util.Locale;

/* compiled from: Twttr */
public class LocaleInitializer<C> extends aof<C> {
    protected void a(Context context, C c) {
        ak.a(a.a(context));
        if (AppConfig.m().p()) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("debug_prefs", 0);
            int i = sharedPreferences.getInt("debug_locale_radio", 0);
            if (i == 1) {
                String string = sharedPreferences.getString("debug_locale_spinner", null);
                if (aj.b(string)) {
                    a(context, string);
                }
            } else if (i == 2) {
                a(context, "en_ss");
            }
        }
        an.a(context).a();
    }

    private void a(Context context, String str) {
        String[] split = str.split("_");
        if (split.length == 2) {
            Locale locale = new Locale(split[0], split[1]);
            Locale.setDefault(locale);
            Resources resources = context.getResources();
            Configuration configuration = resources.getConfiguration();
            configuration.locale = locale;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            ak.a(w.a(locale));
        }
    }
}
