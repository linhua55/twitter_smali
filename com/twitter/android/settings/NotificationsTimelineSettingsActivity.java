package com.twitter.android.settings;

import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.mx;
import com.twitter.android.util.ak;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import defpackage.bbu;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class NotificationsTimelineSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener {
    private l a;
    private TwitterUser b;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("NotificationsTimelineSettingsActivity_account_name");
        if (aj.a((CharSequence) stringExtra)) {
            throw new IllegalArgumentException("NotificationsTimelineSettingsActivity expects an account name but none was specified.");
        }
        setTitle(2131363705);
        this.a = new l(getApplicationContext(), stringExtra);
        this.b = bg.a().b(stringExtra).f();
        if (ak.a(this.b)) {
            addPreferencesFromResource(2131230755);
            CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference("quality_filter");
            checkBoxPreference.setChecked(this.a.getBoolean("quality_filter", true));
            checkBoxPreference.setOnPreferenceChangeListener(this);
            if (this.b != null) {
                bbu.a(new TwitterScribeLog(this.b.bf_()).b("settings:notifications:vit::impression"));
                return;
            }
            return;
        }
        addPreferencesFromResource(2131230742);
        checkBoxPreference = (CheckBoxPreference) findPreference("connect_tab");
        checkBoxPreference.setChecked(this.a.getBoolean("connect_tab", false));
        checkBoxPreference.setOnPreferenceChangeListener(this);
        checkBoxPreference = (CheckBoxPreference) findPreference("notifications_follow_only");
        checkBoxPreference.setChecked(this.a.getBoolean("notifications_follow_only", false));
        checkBoxPreference.setOnPreferenceChangeListener(this);
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        int i = -1;
        switch (key.hashCode()) {
            case 1067170488:
                if (key.equals("quality_filter")) {
                    i = 2;
                    break;
                }
                break;
            case 1533745827:
                if (key.equals("notifications_follow_only")) {
                    i = 0;
                    break;
                }
                break;
            case 1724310208:
                if (key.equals("connect_tab")) {
                    i = 1;
                    break;
                }
                break;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                this.a.a().a("notifications_follow_only", ((Boolean) obj).booleanValue()).apply();
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                this.a.a().a("connect_tab", ((Boolean) obj).booleanValue()).apply();
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                this.a.a().a("quality_filter", booleanValue).apply();
                if (this.b != null) {
                    String str = "settings:notifications:vit:quality_filter:" + (booleanValue ? "select" : "deselect");
                    bbu.a(new TwitterScribeLog(this.b.bf_()).b(str));
                    break;
                }
                break;
        }
        return true;
    }
}
