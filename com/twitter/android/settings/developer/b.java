package com.twitter.android.settings.developer;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.v;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.json.concon.JsonConconBundle;
import com.twitter.model.json.featureswitch.JsonFeatureSwitchesValueObject;
import com.twitter.util.aj;
import java.util.Map.Entry;

/* compiled from: Twttr */
class b extends x {
    private final Context a;
    private final String b;

    b(Context context, String str) {
        super(context, "conconRequest");
        this.a = context;
        this.b = str;
    }

    protected void a_(aa aaVar) {
        v a = v.a(JsonConconBundle.class);
        aaVar.a(false);
        if (a(this.a, "https://concon.twitter.biz/1.0/bundle/" + this.b).a(RequestMethod.a).a(a).a().c().k()) {
            JsonConconBundle jsonConconBundle = (JsonConconBundle) a.b();
            if (jsonConconBundle != null) {
                a(jsonConconBundle);
                aaVar.a(true);
            }
        }
    }

    private void a(JsonConconBundle jsonConconBundle) {
        if (aj.b(jsonConconBundle.a)) {
            a(jsonConconBundle.a, PreferenceManager.getDefaultSharedPreferences(this.a));
        }
        if (jsonConconBundle.b != null) {
            for (Entry entry : jsonConconBundle.b.entrySet()) {
                n.a(this.a, (String) entry.getKey(), ((JsonFeatureSwitchesValueObject) entry.getValue()).a.a);
            }
        }
    }

    private void a(String str, SharedPreferences sharedPreferences) {
        sharedPreferences.edit().putString("extra_dtab", str).putBoolean("extra_dtab_enabled", true).apply();
    }
}
