package com.twitter.android.settings;

import android.content.Intent;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.support.annotation.VisibleForTesting;
import android.widget.Toast;
import com.twitter.android.mx;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.t;
import com.twitter.library.service.x;
import com.twitter.library.util.b;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bex;

/* compiled from: Twttr */
public class TimelineSettingsActivity extends BaseAccountSettingsActivity implements OnPreferenceChangeListener {
    private CheckBoxPreference c;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(2131363438));
        addPreferencesFromResource(2131230753);
        this.c = (CheckBoxPreference) findPreference("ranked_timeline_setting");
        this.c.setOnPreferenceChangeListener(this);
        UserSettings j = l().j();
        if (a(j, getIntent())) {
            c(j);
        }
        b(j);
        bbu.a(new TwitterScribeLog(this.a).b("settings", "timeline", null, null, "impression"));
    }

    private void c(UserSettings userSettings) {
        b.a(l().e(), null, userSettings);
    }

    protected void onResume() {
        super.onResume();
        if (!a(l().j())) {
            b();
        }
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        Session l = l();
        UserSettings j = l.j();
        String key = preference.getKey();
        if (key == null || j == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case 970067014:
                if (key.equals("ranked_timeline_setting")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                z = ((Boolean) obj).booleanValue();
                j.v = b(z);
                a(l, j);
                TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.a);
                String[] strArr = new String[5];
                strArr[0] = "settings";
                strArr[1] = "timeline";
                strArr[2] = null;
                strArr[3] = "ranked_timeline_setting";
                strArr[4] = z ? "enable" : "disable";
                bbu.a(twitterScribeLog.b(strArr));
                return true;
            default:
                return false;
        }
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (!isFinishing()) {
            if (xVar.U()) {
                UserSettings j = l().j();
                if (j == null) {
                    bbn.a(new IllegalStateException("Unexpected null userSettings, they should have been written as part of UserSettingsAPIRequest!"));
                    return;
                } else if (a(j)) {
                    b(j);
                    return;
                } else {
                    b();
                    return;
                }
            }
            Toast.makeText(this, getString(2131362742), 0).show();
        }
    }

    @VisibleForTesting
    static boolean a(UserSettings userSettings, Intent intent) {
        if (userSettings == null || !"ranked_prompt".equals(intent.getStringExtra("source")) || userSettings.v != 0) {
            return false;
        }
        userSettings.v = 1;
        userSettings.w = true;
        return true;
    }

    @VisibleForTesting
    static boolean a(UserSettings userSettings) {
        return userSettings != null && userSettings.w;
    }

    @VisibleForTesting
    void b() {
        Toast.makeText(this, getString(2131363749), 1).show();
        finish();
    }

    @VisibleForTesting
    void b(UserSettings userSettings) {
        if (userSettings != null) {
            this.c.setChecked(userSettings.c());
        }
    }

    private void a(Session session, UserSettings userSettings) {
        x a = bex.a(this, session, userSettings, false, null).a(true);
        a.a(new t());
        b(a, 2);
    }

    private int b(boolean z) {
        if (z) {
            return 3;
        }
        return 2;
    }
}
