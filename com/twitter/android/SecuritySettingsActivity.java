package com.twitter.android;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceScreen;
import android.support.v7.recyclerview.BuildConfig;
import android.widget.Toast;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.client.c;
import com.twitter.config.d;
import com.twitter.library.network.an;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.account.LvEligibilityResponse;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bdv;
import defpackage.bdz;
import defpackage.bei;
import defpackage.bek;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class SecuritySettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener, OnPreferenceClickListener {
    private String a;
    private long b;
    private pw c;
    private boolean f;
    private boolean g;
    private boolean h;
    private Preference i;
    private Preference j;
    private Preference k;
    private Preference l;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e = c.a((Context) this);
        setTitle(2131363741);
        this.a = getIntent().getStringExtra("SecuritySettingsActivity_account_name");
        this.b = getIntent().getLongExtra("SecuritySettingsActivity_account_id", l().g());
        if (bundle != null) {
            this.g = bundle.getBoolean("enrolling", false);
        } else {
            this.g = false;
        }
        addPreferencesFromResource(2131230750);
        boolean a = bek.a(getApplicationContext(), this.a);
        Preference findPreference = findPreference("login_verification");
        findPreference.setOnPreferenceChangeListener(this);
        ((CheckBoxPreference) findPreference).setChecked(a);
        if (d.a("native_mobile_sms_2fa_enabled")) {
            findPreference.setSummary(2131363669);
        }
        this.i = findPreference("login_verification_generate_code");
        this.i.setOnPreferenceClickListener(this);
        this.j = findPreference("login_verification_check_requests");
        this.j.setOnPreferenceClickListener(this);
        this.k = findPreference("temporary_app_password");
        this.k.setOnPreferenceClickListener(this);
        this.l = findPreference("login_verification_totp_code");
        this.l.setOnPreferenceClickListener(this);
        e();
        this.c = new pw(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(PushRegistration.e);
        intentFilter.addAction(PushRegistration.f);
        registerReceiver(this.c, intentFilter, ck.a, null);
        this.f = false;
        this.h = false;
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        aa aaVar = (aa) xVar.l().b();
        int i2 = aaVar.g().a;
        int[] a;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                int[] a2 = an.a(aaVar.c);
                int a3 = a(a2);
                this.g = false;
                a();
                if (i2 == 200) {
                    bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:set_enabled_for::success"));
                    bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:enroll::success"));
                    a(2131363000);
                    ((CheckBoxPreference) findPreference("login_verification")).setChecked(true);
                    if (d.a("native_mobile_sms_2fa_enabled")) {
                        c();
                    } else {
                        d();
                    }
                    this.h = false;
                    startActivity(new Intent(this, BackupCodeActivity.class).putExtra("bc_account_name", this.a).putExtra("show_welcome", true).putExtra("bc_account_id", this.b));
                } else if (i2 == 400 && a3 == 247) {
                    bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:set_enabled_for::failure"));
                    bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:enroll::success"));
                    a(2131363000);
                    ((CheckBoxPreference) findPreference("login_verification")).setChecked(true);
                    this.h = false;
                    showDialog(12);
                } else {
                    bei.b(getApplicationContext(), this.a);
                    a("enroll", i2, a2);
                    a(2131362997);
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                a = an.a(aaVar.c);
                a();
                if (aaVar.b()) {
                    bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:unenroll::success"));
                    bei.b(getApplicationContext(), this.a);
                    ((CheckBoxPreference) findPreference("login_verification")).setChecked(false);
                    this.h = false;
                    e();
                    return;
                }
                a("unenroll", i2, a);
                a(2131362997);
            case WireMessage.WIRE_AUTH /*3*/:
                a = ((bdv) xVar).g();
                int a4 = a(a);
                if (!this.g) {
                    a();
                }
                if (aaVar.b()) {
                    LvEligibilityResponse e = ((bdv) xVar).e();
                    if (!this.g) {
                        bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:eligibility::success"));
                    }
                    if (!"sms".equals(e.a())) {
                        if (this.g && "push".equals(e.a())) {
                            this.g = false;
                            a();
                        }
                        if (!this.g) {
                            Preference findPreference = findPreference("login_verification");
                            if ("push".equals(e.a())) {
                                ((CheckBoxPreference) findPreference).setChecked(true);
                                d();
                            } else {
                                ((CheckBoxPreference) findPreference).setChecked(false);
                                e();
                            }
                        }
                        if (e.b()) {
                            this.h = true;
                            showDialog(11);
                            return;
                        }
                        this.h = false;
                        return;
                    } else if (d.a("native_mobile_sms_2fa_enabled")) {
                        ((CheckBoxPreference) findPreference("login_verification")).setChecked(true);
                        c();
                        return;
                    } else {
                        return;
                    }
                }
                a("eligibility", i2, a);
                if (!d.a("native_mobile_sms_2fa_enabled")) {
                    switch (a4) {
                        case 232:
                            showDialog(4);
                        case 233:
                            showDialog(11);
                        case 234:
                            showDialog(5);
                        default:
                            if (!bek.a(getApplicationContext(), this.a)) {
                                showDialog(6);
                            }
                    }
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a = ((bdz) xVar).e();
                a();
                if (!an.a(aaVar)) {
                    if (a != null && CollectionUtils.a(a, 232)) {
                        showDialog(4);
                    } else if (a != null && CollectionUtils.a(a, 233)) {
                        showDialog(11);
                    } else if (a == null || !CollectionUtils.a(a, 234)) {
                        showDialog(6);
                    } else {
                        showDialog(5);
                    }
                }
            default:
        }
    }

    private void c() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (findPreference("login_verification_totp_code") == null && d.a("login_verification_totp_generator_enabled")) {
            preferenceScreen.addPreference(this.l);
        }
        if (findPreference("login_verification_generate_code") == null) {
            preferenceScreen.addPreference(this.i);
        }
        if (findPreference("temporary_app_password") == null) {
            preferenceScreen.addPreference(this.k);
        }
    }

    private void d() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (findPreference("login_verification_check_requests") == null) {
            preferenceScreen.addPreference(this.j);
        }
        c();
    }

    private void e() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        preferenceScreen.removePreference(this.j);
        preferenceScreen.removePreference(this.i);
        preferenceScreen.removePreference(this.k);
        preferenceScreen.removePreference(this.l);
    }

    protected void onResume() {
        boolean z = true;
        super.onResume();
        if (l().d()) {
            bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:::impression"));
            if (this.g) {
                z = false;
            }
            b(z);
            return;
        }
        DispatchActivity.a(this, getIntent());
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("enrolling", this.g);
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            unregisterReceiver(this.c);
        }
    }

    private void b(boolean z) {
        if (z) {
            a(getString(2131362994));
        }
        b(new bdv(this, k().b(this.a), bek.d(this, this.a)), 3);
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (!"login_verification".equals(preference.getKey())) {
            return true;
        }
        if (((Boolean) obj).booleanValue()) {
            bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:::select"));
            if (this.h) {
                showDialog(11);
                return false;
            }
            showDialog(1);
            return false;
        }
        bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:::deselect"));
        showDialog(2);
        return false;
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if ("login_verification_generate_code".equals(key)) {
            startActivity(new Intent(this, BackupCodeActivity.class).putExtra("bc_account_name", this.a).putExtra("bc_account_id", this.b));
            return true;
        } else if ("login_verification_check_requests".equals(key)) {
            startActivity(new Intent(this, LoginVerificationActivity.class).putExtra("lv_account_name", this.a));
            return true;
        } else if ("temporary_app_password".equals(key)) {
            startActivity(new Intent(this, TemporaryAppPasswordActivity.class).putExtra("account_name", this.a).putExtra("account_id", this.b));
            return true;
        } else if ("login_verification_totp_code".equals(key)) {
            return true;
        } else {
            return false;
        }
    }

    private void a(int i) {
        Toast.makeText(this, getString(i), 1).show();
    }

    private void f() {
        this.g = true;
        if (d.a("native_mobile_sms_2fa_enabled")) {
            b(new bdz(getApplicationContext(), k().b(this.a)), 4);
        } else {
            new pv(this, getApplicationContext(), this.a).execute(new Void[0]);
        }
    }

    private OnClickListener c(String str) {
        return new pm(this, str);
    }

    private OnClickListener d(String str) {
        return new pn(this, str);
    }

    protected Dialog onCreateDialog(int i) {
        OnClickListener poVar = new po(this, i);
        OnCancelListener ppVar = new pp(this, i);
        OnDismissListener pqVar = new pq(this);
        OnCancelListener prVar = new pr(this);
        OnClickListener psVar = new ps(this);
        Dialog create;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return new Builder(this).setTitle(2131362996).setMessage(2131362995).setPositiveButton(17039379, c("settings:login_verification:enroll:ok:click")).setNegativeButton(17039369, poVar).setOnCancelListener(ppVar).create();
            case WireMessage.WIRE_CONTROL /*2*/:
                return new Builder(this).setTitle(2131362417).setMessage(2131362416).setPositiveButton(17039379, d("settings:login_verification:unenroll:ok:click")).setNegativeButton(17039369, poVar).setOnCancelListener(ppVar).create();
            case WireMessage.WIRE_AUTH /*3*/:
                return new Builder(this).setTitle(BuildConfig.VERSION_NAME).setMessage(2131362999).setIcon(17301543).setNeutralButton(17039370, poVar).setOnCancelListener(ppVar).show();
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                create = new Builder(this).setTitle(2131363004).setMessage(2131362991).setPositiveButton(2131361869, new pt(this)).setNegativeButton(2131362041, psVar).setOnCancelListener(prVar).create();
                create.setOnDismissListener(pqVar);
                return create;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return new Builder(this).setTitle(2131363004).setMessage(2131363007).setPositiveButton(2131364132, new pu(this)).setNegativeButton(2131362041, psVar).setOnCancelListener(prVar).create();
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return new Builder(this).setTitle(2131362998).setMessage(2131362997).setNeutralButton(17039370, psVar).setOnCancelListener(prVar).create();
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                create = new ProgressDialog(this);
                create.setProgressStyle(0);
                create.setIndeterminate(true);
                create.setCancelable(false);
                return create;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return new Builder(this).setTitle(2131363004).setMessage(2131363001).setPositiveButton(2131363925, c("settings:login_verification:switch:ok:click")).setNegativeButton(2131362041, psVar).setOnCancelListener(prVar).create();
            case mx.TwitterEditText_characterCounterColor /*12*/:
                return new Builder(this).setTitle(2131363006).setMessage(2131363005).setNeutralButton(2131363218, poVar).setOnCancelListener(ppVar).create();
            default:
                return super.onCreateDialog(i);
        }
    }

    protected void onPrepareDialog(int i, Dialog dialog, Bundle bundle) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:enroll::impression"));
                super.onPrepareDialog(i, dialog);
            case WireMessage.WIRE_CONTROL /*2*/:
                bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:unenroll::impression"));
                super.onPrepareDialog(i, dialog);
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                ((ProgressDialog) dialog).setMessage(e.b(bundle.getString(NotificationCompatApi21.CATEGORY_MESSAGE)));
            default:
                super.onPrepareDialog(i, dialog);
        }
    }

    private static int a(int[] iArr) {
        return (iArr == null || iArr.length == 0) ? 0 : iArr[0];
    }

    void a(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(NotificationCompatApi21.CATEGORY_MESSAGE, str);
        showDialog(7, bundle);
    }

    void a() {
        removeDialog(7);
    }

    private void a(String str, int i, int[] iArr) {
        String str2 = "settings:login_verification:";
        int a = a(iArr);
        if (a == 88) {
            bbu.a(new TwitterScribeLog(this.b).b("settings:login_verification:" + str + "::rate_limit"));
        }
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(l().g()).b("settings:login_verification:" + str + "::failure");
        bbw.f(String.valueOf(i));
        bbw.d(String.valueOf(a));
        bbu.a(bbw);
    }

    private String g() {
        Context applicationContext = getApplicationContext();
        if (bek.a(applicationContext, this.a)) {
            return bek.d(applicationContext, this.a);
        }
        return null;
    }
}
