package com.twitter.android.settings;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.support.annotation.CallSuper;
import android.widget.Toast;
import com.twitter.android.AddUpdateEmailActivity;
import com.twitter.android.PhoneEntrySettingsActivity;
import com.twitter.android.SecuritySettingsActivity;
import com.twitter.android.bk;
import com.twitter.android.dialog.UpdatePhoneDialogActivity;
import com.twitter.android.mx;
import com.twitter.android.settings.country.CountryPreference;
import com.twitter.android.settings.country.b;
import com.twitter.android.util.aq;
import com.twitter.config.d;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import defpackage.bbu;
import defpackage.bex;
import defpackage.bon;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class AccountActivity extends BaseAccountSettingsActivity implements OnPreferenceClickListener {
    private Preference c;
    private Preference f;
    private String g;
    private boolean h;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230722);
        findPreference("change_password").setOnPreferenceClickListener(this);
        findPreference("security").setOnPreferenceClickListener(this);
        d();
        boolean b = b();
        boolean c = c();
        this.c = findPreference("phone_association");
        if (b) {
            this.c.setOnPreferenceClickListener(this);
        } else {
            b("phone_association");
        }
        this.f = findPreference("email_association");
        if (c) {
            this.f.setOnPreferenceClickListener(this);
        } else {
            b("email_association");
        }
        if (b || c) {
            g();
        }
        a(getIntent());
    }

    private void d() {
        if (d.a("account_country_setting_enabled")) {
            CountryPreference countryPreference = (CountryPreference) findPreference("country_category");
            if (countryPreference != null) {
                countryPreference.a(new b(this, countryPreference, l(), az.a((Context) this), b.a(d.c("account_country_setting_countries_whitelist"))));
                return;
            }
            return;
        }
        b("country_category");
    }

    @CallSuper
    protected void onNewIntent(Intent intent) {
        String stringExtra = intent.getStringExtra("pending_email");
        if (aj.b((CharSequence) stringExtra)) {
            a(stringExtra, true);
        }
        a(intent);
        super.onNewIntent(intent);
    }

    public boolean onPreferenceClick(Preference preference) {
        boolean z = false;
        String key = preference.getKey();
        if (key == null) {
            return false;
        }
        boolean z2 = true;
        switch (key.hashCode()) {
            case -958726582:
                if (key.equals("change_password")) {
                    z2 = true;
                    break;
                }
                break;
            case -529939664:
                if (key.equals("phone_association")) {
                    z2 = false;
                    break;
                }
                break;
            case 53935198:
                if (key.equals("email_association")) {
                    z2 = true;
                    break;
                }
                break;
            case 949122880:
                if (key.equals("security")) {
                    z2 = true;
                    break;
                }
                break;
        }
        switch (z2) {
            case mx.View_android_theme /*0*/:
                if (aj.b(o())) {
                    startActivityForResult(new Intent(getBaseContext(), UpdatePhoneDialogActivity.class).putExtra("user_id", this.a), 1);
                    return true;
                }
                b(false);
                c("add::click");
                return true;
            case WireMessage.WIRE_CHAT /*1*/:
                if (this.h) {
                    e();
                    return true;
                }
                if (this.g != null) {
                    z = true;
                }
                e(z);
                return true;
            case WireMessage.WIRE_CONTROL /*2*/:
                startActivity(((bk) new bk().a(this.b).d(true)).a((Context) this));
                return true;
            case WireMessage.WIRE_AUTH /*3*/:
                startActivity(new Intent(this, SecuritySettingsActivity.class).putExtra("SecuritySettingsActivity_account_name", this.b).putExtra("SecuritySettingsActivity_account_id", this.a));
                return true;
            default:
                return false;
        }
    }

    private void e() {
        new Builder(this).setTitle(2131362412).setMessage(2131362409).setPositiveButton(2131361862, new d(this)).setNeutralButton(17039369, new c(this)).setNegativeButton(2131362406, new b(this)).setOnCancelListener(new a(this)).create().show();
    }

    private void f() {
        this.J.a(bex.b(this, l(), null, null, null, this.f.getSummary().toString(), false));
        Toast.makeText(this, 2131362304, 0).show();
    }

    private void g() {
        az.a((Context) this).a(new bon(this, k().b(this.a), true, true), new f(this));
    }

    private void a(Intent intent) {
        String stringExtra = intent.getStringExtra("phone_association");
        boolean booleanExtra = intent.getBooleanExtra("update_phone", false);
        if (aj.b((CharSequence) stringExtra)) {
            int i;
            if (booleanExtra) {
                i = 2131363730;
                c("update::success");
            } else {
                i = 2131363718;
                c("add::success");
            }
            Toast.makeText(this, i, 1).show();
            a(stringExtra);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    if (intent.getBooleanExtra("delete_phone", false)) {
                        startActivity(new Intent(this, UpdatePhoneDialogActivity.class).putExtra("user_id", this.a).putExtra("delete_phone", true));
                    }
                    i();
                }
            default:
                super.onActivityResult(i, i2, intent);
        }
    }

    private void b(boolean z) {
        startActivity(new Intent(this, PhoneEntrySettingsActivity.class).putExtra("account_name", this.b).putExtra("update_phone", z).putExtra("add_phone", !z).putExtra("current_phone", o()));
    }

    boolean b() {
        return d.a("phone_association_setting_android_enabled");
    }

    void a(String str) {
        UserSettings p = p();
        if (p != null) {
            p.p = str;
            i();
        }
    }

    private void i() {
        CharSequence o = o();
        if (aj.b(o)) {
            this.c.setSummary(o);
        } else {
            this.c.setSummary(2131361862);
        }
    }

    private String o() {
        UserSettings p = p();
        if (p != null) {
            return aq.a(this).a(p.p);
        }
        return null;
    }

    boolean c() {
        return d.a("update_email_flow_enabled");
    }

    void a(String str, boolean z) {
        if (aj.b((CharSequence) str)) {
            if (z) {
                this.f.setSummary(str + " (" + getString(2131363238) + ")");
                this.h = true;
            } else {
                this.f.setSummary(str);
                this.h = false;
            }
            this.g = str;
            return;
        }
        this.f.setSummary(2131361862);
    }

    private void e(boolean z) {
        Intent intent = new Intent(this, AddUpdateEmailActivity.class);
        if (z) {
            intent.putExtra("umf_update_email", true).putExtra("current_email", this.g);
        } else {
            intent.putExtra("umf_update_email", false);
        }
        startActivity(intent);
    }

    private UserSettings p() {
        return l().j();
    }

    void c(String str) {
        bbu.a(new TwitterScribeLog(this.a).b("settings:phone:" + str));
    }
}
