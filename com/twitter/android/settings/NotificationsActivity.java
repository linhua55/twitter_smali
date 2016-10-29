package com.twitter.android.settings;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import com.twitter.android.mx;
import com.twitter.badge.a;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.cf;
import defpackage.bcs;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class NotificationsActivity extends BaseAccountSettingsActivity implements OnPreferenceChangeListener, OnPreferenceClickListener {
    boolean c;
    boolean f;
    int g;
    boolean h;
    CheckBoxPreference i;
    ListPreference j;
    ListPreference k;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230741);
        this.c = PushRegistration.c(this);
        Preference findPreference = findPreference("notif");
        findPreference.setOnPreferenceClickListener(this);
        if (!this.c) {
            findPreference.setDependency("sync_data");
        }
        findPreference("notifications_timeline").setOnPreferenceClickListener(this);
        this.i = (CheckBoxPreference) findPreference("sync_data");
        this.i.setSummaryOn(2131363746);
        this.i.setSummaryOff(2131363745);
        this.j = (ListPreference) findPreference("polling_interval");
        this.k = (ListPreference) findPreference(cf.a);
        this.k.setOnPreferenceChangeListener(this);
    }

    public void onStart() {
        super.onStart();
        new o(this, this.b).execute(new Void[0]);
    }

    public void onStop() {
        super.onStop();
        new p(this, this.b).execute(new Void[0]);
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case 105008944:
                if (key.equals("notif")) {
                    z = false;
                    break;
                }
                break;
            case 108819896:
                if (key.equals("notifications_timeline")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                startActivity(new Intent(this, MobileNotificationsActivity.class).putExtra("NotificationSettingsActivity_account_name", this.b));
                return true;
            case WireMessage.WIRE_CHAT /*1*/:
                startActivity(new Intent(this, NotificationsTimelineSettingsActivity.class).putExtra("NotificationsTimelineSettingsActivity_account_name", this.b));
                return true;
            default:
                return false;
        }
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (cf.a.equals(preference.getKey())) {
            this.h = true;
            c((String) obj);
        }
        return true;
    }

    private void c(String str) {
        Resources resources = getResources();
        this.k.setSummary(new a(resources.getStringArray(bcs.badge_behaviors_values)).a(str, resources.getStringArray(2131427328)));
    }
}
