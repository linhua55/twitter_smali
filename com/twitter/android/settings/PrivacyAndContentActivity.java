package com.twitter.android.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.support.v7.recyclerview.BuildConfig;
import android.widget.ListView;
import com.twitter.android.AppGraphSettingsActivity;
import com.twitter.android.PersonalizedAdsSettingsActivity;
import com.twitter.android.mx;
import com.twitter.android.util.aq;
import com.twitter.android.util.bf;
import com.twitter.android.widget.UrlLinkableCheckboxPreference;
import com.twitter.config.d;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.l;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.ae;
import com.twitter.util.j;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bex;
import defpackage.big;
import defpackage.bon;
import defpackage.cbx;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class PrivacyAndContentActivity extends BaseAccountSettingsActivity implements OnPreferenceChangeListener, OnPreferenceClickListener {
    private CheckBoxPreference c;
    private Preference f;
    private CheckBoxPreference g;
    private CheckBoxPreference h;
    private ListPreference i;
    private CheckBoxPreference j;
    private CheckBoxPreference k;
    private Preference l;
    private UrlLinkableCheckboxPreference m;
    private boolean n;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230745);
        this.n = d.a("people_discoverability_settings_update_enabled");
        this.c = (CheckBoxPreference) findPreference("allow_dms_from");
        this.c.setOnPreferenceChangeListener(this);
        if (big.c()) {
            CheckBoxPreference checkBoxPreference = (CheckBoxPreference) ObjectUtils.a(findPreference("dm_read_receipts"));
            checkBoxPreference.setOnPreferenceChangeListener(this);
            checkBoxPreference.setChecked(new l(this, this.b).getBoolean("dm_read_receipts", true));
        } else {
            b("dm_read_receipts");
        }
        this.g = (CheckBoxPreference) findPreference("display_sensitive_media");
        this.g.setOnPreferenceChangeListener(this);
        if (cbx.a()) {
            findPreference("contacts_sync").setOnPreferenceClickListener(this);
        } else {
            b("contacts_sync");
        }
        if (d.a("app_graph_enabled")) {
            this.f = findPreference("app_graph");
            this.f.setOnPreferenceClickListener(this);
        } else {
            b("app_graph");
        }
        if (d.a("mute_list_enabled")) {
            findPreference("mute_list").setOnPreferenceClickListener(this);
        } else {
            b("mute_list");
        }
        if (d.a("block_list_enabled")) {
            findPreference("block_list").setOnPreferenceClickListener(this);
        } else {
            b("block_list");
        }
        this.h = (CheckBoxPreference) findPreference("protected");
        this.h.setOnPreferenceChangeListener(this);
        this.i = (ListPreference) findPreference("allow_media_tagging");
        this.i.setOnPreferenceChangeListener(this);
        this.j = (CheckBoxPreference) findPreference("discoverable_by_email");
        this.j.setOnPreferenceChangeListener(this);
        this.k = (CheckBoxPreference) findPreference("discoverable_by_mobile_phone");
        this.l = findPreference("personalized_ads");
        this.l.setOnPreferenceClickListener(this);
        if (d.a("automated_mute_enabled")) {
            this.m = (UrlLinkableCheckboxPreference) findPreference("smart_mute");
            this.m.setOnPreferenceChangeListener(this);
        } else {
            b("smart_mute");
        }
        if (bundle == null) {
            String stringExtra = getIntent().getStringExtra("scroll_to_row");
            if (stringExtra != null) {
                new Handler().post(new q(this, stringExtra));
            }
        }
    }

    protected void onResume() {
        boolean z;
        boolean z2 = true;
        super.onResume();
        UserSettings userSettings = (UserSettings) e.a(l().j());
        this.c.setChecked(userSettings.f());
        this.g.setChecked(userSettings.k);
        if (this.f != null) {
            int i;
            String string = new l(getApplicationContext(), this.b).getString("app_graph_status", "undetermined");
            z = true;
            switch (string.hashCode()) {
                case -1010131013:
                    if (string.equals("optout")) {
                        z = true;
                        break;
                    }
                    break;
                case 105962264:
                    if (string.equals("optin")) {
                        z = false;
                        break;
                    }
                    break;
            }
            switch (z) {
                case mx.View_android_theme /*0*/:
                    i = 2131362662;
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                    i = 2131362418;
                    break;
                default:
                    i = 0;
                    break;
            }
            if (i > 0) {
                this.f.setSummary(i);
            } else {
                this.f.setSummary(BuildConfig.VERSION_NAME);
            }
        }
        CheckBoxPreference checkBoxPreference = this.h;
        if (userSettings == null || !userSettings.j) {
            z = false;
        } else {
            z = true;
        }
        checkBoxPreference.setChecked(z);
        this.i.setValue(userSettings == null ? null : userSettings.n);
        c();
        d();
        if (userSettings != null) {
            if (userSettings.q) {
                this.l.setSummary(2131362662);
            } else {
                this.l.setSummary(2131362418);
            }
        }
        if (this.m != null) {
            UrlLinkableCheckboxPreference urlLinkableCheckboxPreference = this.m;
            if (userSettings == null || !userSettings.t) {
                z2 = false;
            }
            urlLinkableCheckboxPreference.setChecked(z2);
        }
    }

    private void c() {
        UserSettings j = l().j();
        CheckBoxPreference checkBoxPreference = this.j;
        boolean z = j != null && j.i;
        checkBoxPreference.setChecked(z);
        if (this.n) {
            Session b = k().b(this.b);
            az a = az.a((Context) this);
            this.j.setSummary(getString(2131363648));
            a.a(new bon(this, b, true, true), new r(this));
        }
    }

    private void d() {
        boolean z = true;
        if (this.k != null) {
            UserSettings j = l().j();
            Context applicationContext = getApplicationContext();
            ae a = ae.a(applicationContext);
            if (this.n) {
                this.k.setOnPreferenceChangeListener(this);
                CheckBoxPreference checkBoxPreference = this.k;
                if (j == null || !j.l) {
                    z = false;
                }
                checkBoxPreference.setChecked(z);
                this.k.setSummary(getString(2131363721));
                if (a.c() || a.b()) {
                    aq.a(applicationContext).a(new s(this));
                } else {
                    this.k.setSummary(getString(2131363641));
                }
            } else if (a.c()) {
                this.k.setEnabled(false);
                aq.a(applicationContext).a(new t(this, j));
            } else if (a.b()) {
                this.k.setOnPreferenceChangeListener(this);
                CheckBoxPreference checkBoxPreference2 = this.k;
                if (j == null || !j.l) {
                    z = false;
                }
                checkBoxPreference2.setChecked(z);
            } else {
                this.k = null;
                b("discoverable_by_mobile_phone");
            }
        }
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case -853878847:
                if (key.equals("personalized_ads")) {
                    z = true;
                    break;
                }
                break;
            case 1160150788:
                if (key.equals("mute_list")) {
                    z = true;
                    break;
                }
                break;
            case 1286305040:
                if (key.equals("block_list")) {
                    z = true;
                    break;
                }
                break;
            case 1514254087:
                if (key.equals("contacts_sync")) {
                    z = true;
                    break;
                }
                break;
            case 1831387568:
                if (key.equals("app_graph")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                startActivity(new Intent(this, AppGraphSettingsActivity.class).putExtra("AppGraphSettingsActivity_account_name", this.b));
                return true;
            case WireMessage.WIRE_CHAT /*1*/:
                startActivity(bf.b(this, this.a));
                bbu.a(new TwitterScribeLog(this.a).b("settings:mute_list:::click"));
                return true;
            case WireMessage.WIRE_CONTROL /*2*/:
                startActivity(bf.a(this, this.a));
                bbu.a(new TwitterScribeLog(this.a).b("settings:block_list:::click"));
                return true;
            case WireMessage.WIRE_AUTH /*3*/:
                startActivity(new Intent(this, PersonalizedAdsSettingsActivity.class));
                return true;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                startActivity(new Intent(this, ContactsSyncSettingsActivity.class).putExtra("ContactsSyncSettingsActivity_account_name", this.b).putExtra("ContactsSyncSettingsActivity_account_id", this.a));
                return true;
            default:
                return false;
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
            case -1806062897:
                if (key.equals("smart_mute")) {
                    z = true;
                    break;
                }
                break;
            case -1747500828:
                if (key.equals("allow_media_tagging")) {
                    z = true;
                    break;
                }
                break;
            case -1550974082:
                if (key.equals("display_sensitive_media")) {
                    z = false;
                    break;
                }
                break;
            case -778734851:
                if (key.equals("discoverable_by_mobile_phone")) {
                    z = true;
                    break;
                }
                break;
            case -608539730:
                if (key.equals("protected")) {
                    z = true;
                    break;
                }
                break;
            case 481087630:
                if (key.equals("dm_read_receipts")) {
                    z = true;
                    break;
                }
                break;
            case 1169312176:
                if (key.equals("discoverable_by_email")) {
                    z = true;
                    break;
                }
                break;
            case 2040074741:
                if (key.equals("allow_dms_from")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                j.k = Boolean.TRUE.equals(obj);
                a(l, j);
                return true;
            case WireMessage.WIRE_CHAT /*1*/:
                if (Boolean.TRUE.equals(obj)) {
                    j.s = "all";
                } else {
                    j.s = "following";
                }
                a(l, j);
                return true;
            case WireMessage.WIRE_CONTROL /*2*/:
                j.b(big.c());
                z = Boolean.TRUE.equals(obj);
                new l(this, this.b).a().a("dm_read_receipts", z).apply();
                j.y = z ? "all_enabled" : "all_disabled";
                a(l, j);
                e(z);
                return true;
            case WireMessage.WIRE_AUTH /*3*/:
                j.j = Boolean.TRUE.equals(obj);
                a(l, j);
                return true;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                j.t = Boolean.TRUE.equals(obj);
                a(l, j);
                b(j.t);
                return true;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                String str = (String) obj;
                j.n = str;
                a(l, j);
                com.twitter.library.util.aq.a((ListPreference) preference, str);
                c(str);
                return true;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                j.i = Boolean.TRUE.equals(obj);
                a(l, j);
                return true;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                j.l = Boolean.TRUE.equals(obj);
                a(l, j);
                return true;
            default:
                return false;
        }
    }

    private void a(Session session, UserSettings userSettings) {
        this.J.a(bex.a(this, session, userSettings, false, null));
    }

    private void c(String str) {
        String str2;
        if (str.equals(getString(2131364328))) {
            str2 = "privacy_settings:who_can_tag_me::from_anyone:select";
        } else if (str.equals(getString(2131364329))) {
            str2 = "privacy_settings:who_can_tag_me::from_people_you_follow:select";
        } else if (str.equals(getString(2131364330))) {
            str2 = "privacy_settings:who_can_tag_me:::deselect";
        } else {
            return;
        }
        bbu.a(new TwitterScribeLog(this.a).b(str2));
    }

    private void b(boolean z) {
        String str;
        if (z) {
            str = "privacy_settings:muted_automated:toggle::opt_in";
        } else {
            str = "privacy_settings:muted_automated:toggle::opt_out";
        }
        bbu.a(new TwitterScribeLog(this.a).b(str));
    }

    private void e(boolean z) {
        String str = z ? "opt_in" : "opt_out";
        bbu.a(new TwitterScribeLog(this.a).b("privacy_settings:read_receipts:toggle:", str));
    }

    private void d(String str) {
        ListView listView = getListView();
        if (listView != null) {
            for (int i = 0; i < listView.getCount(); i++) {
                Object item = listView.getAdapter().getItem(i);
                if ((item instanceof Preference) && str.equals(((Preference) item).getKey())) {
                    listView.setSelection(i);
                    return;
                }
            }
        }
    }
}
