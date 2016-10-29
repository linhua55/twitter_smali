package com.twitter.android.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceGroup;
import android.support.annotation.VisibleForTesting;
import com.twitter.android.DispatchActivity;
import com.twitter.android.RemoveAccountDialogActivity;
import com.twitter.android.commerce.util.c;
import com.twitter.android.mx;
import com.twitter.android.settings.developer.l;
import com.twitter.app.main.MainActivity;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import defpackage.asp;
import defpackage.bbu;
import defpackage.bex;
import defpackage.bvj;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class SettingsActivity extends BaseAccountSettingsActivity implements OnPreferenceClickListener, asp {
    private static final String[] c;
    private String f;
    private PreferenceGroup g;

    static {
        c = new String[]{"pref_account", "pref_notifications", "pref_privacy_and_content", "pref_orders_and_payments", "pref_sign_out", "pref_display_and_sound", "pref_data", "pref_location_and_proxy"};
    }

    public static void a(Context context) {
        context.startActivity(new Intent(context, SettingsActivity.class).putExtra("extra_account_id", bg.a().c().g()));
    }

    protected void onCreate(Bundle bundle) {
        long g = bg.a().c().g();
        if (bundle == null && c()) {
            getIntent().putExtra("extra_account_id", g);
        }
        super.onCreate(bundle);
        addPreferencesFromResource(2131230751);
        for (CharSequence findPreference : c) {
            findPreference(findPreference).setOnPreferenceClickListener(this);
        }
        if (!(c.a() || c.c())) {
            b("pref_orders_and_payments");
        }
        this.g = (PreferenceGroup) findPreference("category_account");
        d();
        if (bundle == null) {
            b(bex.a((Context) this, l()), 2);
        }
        Preference findPreference2 = findPreference("pref_about");
        findPreference2.setTitle(AboutActivity.a(this));
        findPreference2.setOnPreferenceClickListener(this);
        l.a(this);
        bbu.a(new TwitterScribeLog(this.a).b("settings::::impression"));
    }

    private boolean c() {
        Intent intent = getIntent();
        return intent != null && intent.hasCategory("android.intent.category.NOTIFICATION_PREFERENCES");
    }

    protected void onResume() {
        super.onResume();
        this.f = l().e();
        this.g.setTitle('@' + this.f);
        bvj.a((asp) this);
    }

    protected void onPause() {
        super.onPause();
        bvj.b((asp) this);
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        boolean z = true;
        switch (key.hashCode()) {
            case -1647394191:
                if (key.equals("pref_about")) {
                    z = true;
                    break;
                }
                break;
            case -1485202866:
                if (key.equals("pref_display_and_sound")) {
                    z = true;
                    break;
                }
                break;
            case -1299979194:
                if (key.equals("pref_data")) {
                    z = true;
                    break;
                }
                break;
            case -728428596:
                if (key.equals("pref_notifications")) {
                    z = true;
                    break;
                }
                break;
            case -236659608:
                if (key.equals("pref_sign_out")) {
                    z = true;
                    break;
                }
                break;
            case -135478338:
                if (key.equals("pref_privacy_and_content")) {
                    z = true;
                    break;
                }
                break;
            case 877677459:
                if (key.equals("pref_orders_and_payments")) {
                    z = true;
                    break;
                }
                break;
            case 1669995229:
                if (key.equals("pref_timeline")) {
                    z = true;
                    break;
                }
                break;
            case 1714487313:
                if (key.equals("pref_account")) {
                    z = false;
                    break;
                }
                break;
            case 1743886744:
                if (key.equals("pref_location_and_proxy")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                a(AccountActivity.class);
                return true;
            case WireMessage.WIRE_CHAT /*1*/:
                a(NotificationsActivity.class);
                return true;
            case WireMessage.WIRE_CONTROL /*2*/:
                a(TimelineSettingsActivity.class);
                return true;
            case WireMessage.WIRE_AUTH /*3*/:
                a(PrivacyAndContentActivity.class);
                return true;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a(OrdersAndPaymentsActivity.class);
                return true;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                startActivityForResult(new Intent(this, RemoveAccountDialogActivity.class).putExtra("RemoveAccountDialogActivity_account_name", this.f), 1);
                return true;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                startActivity(new Intent(this, DisplayAndSoundActivity.class));
                return true;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                startActivity(new Intent(this, DataSettingsActivity.class));
                return true;
            case ControlMessage.CONTROL_BAN /*8*/:
                startActivity(new Intent(this, LocationAndProxyActivity.class));
                return true;
            case mx.TwitterEditText_messageSize /*9*/:
                startActivity(new Intent(this, AboutActivity.class));
                return true;
            default:
                return false;
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 != -1) {
                    return;
                }
                if (intent.getBooleanExtra("is_last", false)) {
                    DispatchActivity.a((Activity) this);
                } else {
                    finish();
                }
            default:
                super.onActivityResult(i, i2, intent);
        }
    }

    protected void a(x xVar, int i) {
        super.a(xVar, i);
        if (i == 2) {
            d();
        }
    }

    public void a(long j) {
        d();
    }

    private void d() {
        boolean a = a(l().j());
        Preference findPreference = this.g.findPreference("pref_timeline");
        if (a && findPreference == null) {
            e();
        } else if (!a && findPreference != null) {
            this.g.removePreference(findPreference);
        }
    }

    @VisibleForTesting
    static boolean a(UserSettings userSettings) {
        return userSettings != null && userSettings.w;
    }

    private void e() {
        Preference preference = new Preference(this);
        preference.setKey("pref_timeline");
        preference.setTitle(getString(2131363438));
        preference.setOnPreferenceClickListener(this);
        preference.setOrder(25);
        this.g.addPreference(preference);
    }

    public void finish() {
        if (c()) {
            startActivity(new Intent(this, MainActivity.class));
        }
        super.finish();
    }
}
