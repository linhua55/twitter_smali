package com.twitter.android;

import android.accounts.AccountAuthenticatorResponse;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.client.c;
import com.twitter.android.settings.AboutActivity;
import com.twitter.android.settings.ProxySettingsActivity;
import com.twitter.android.util.AppEventTrack;
import com.twitter.android.util.AppEventTrack.EventType;
import com.twitter.android.util.al;
import com.twitter.android.util.bh;
import com.twitter.android.util.bi;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.k;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.app.main.MainActivity;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.client.u;
import com.twitter.library.network.f;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.library.util.b;
import com.twitter.model.account.LoginVerificationRequiredResponse;
import com.twitter.model.login.OneFactorEligibleFactor;
import com.twitter.model.login.OneFactorEligibleFactor.FactorType;
import com.twitter.model.login.a;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.ui.widget.ao;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bex;
import defpackage.cew;
import defpackage.zs;
import java.util.List;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class LoginActivity extends TwitterFragmentActivity implements TextWatcher, OnClickListener, ku, k, m, ao {
    private static final int[] b;
    boolean a;
    private final it c;
    private int d;
    private String e;
    private String f;
    private TwitterEditText g;
    private TwitterEditText h;
    private Button i;
    private String j;
    private boolean k;
    private int l;
    private boolean m;
    private bh n;
    private String o;
    private OneFactorEligibleFactor[] p;

    public LoginActivity() {
        this.c = new it(this);
        this.e = "no_prefill";
        this.f = BuildConfig.VERSION_NAME;
        this.p = null;
    }

    static {
        b = new int[]{2130773003};
    }

    public t a(Bundle bundle, t tVar) {
        if (this.n == null) {
            this.n = bi.a(this);
        }
        if (this.n.a()) {
            getTheme().applyStyle(2131559094, true);
            qh.a((Activity) this);
            tVar.d(2130968960);
            tVar.b(0);
        } else {
            tVar.d(2130968958);
        }
        tVar.a(false);
        tVar.c(false);
        tVar.b(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        CharSequence queryParameter;
        CharSequence queryParameter2;
        setTitle(2131362987);
        Intent intent = getIntent();
        this.a = intent.getBooleanExtra("add_account", false);
        this.m = intent.getBooleanExtra("authorize_account", false);
        this.g = (TwitterEditText) findViewById(2131952673);
        this.h = (TwitterEditText) findViewById(2131952674);
        this.i = (Button) findViewById(2131952675);
        this.i.setOnClickListener(this);
        this.g.addTextChangedListener(this);
        this.h.addTextChangedListener(this);
        this.h.setOnStatusIconClickListener(this);
        ImageButton imageButton = (ImageButton) findViewById(2131952676);
        if (imageButton != null) {
            imageButton.setOnClickListener(this);
        }
        findViewById(2131952073).setOnClickListener(this);
        this.d = 0;
        Uri data = intent.getData();
        if (data != null) {
            queryParameter = data.getQueryParameter("screen_name");
            queryParameter2 = data.getQueryParameter("password");
        } else {
            queryParameter = intent.getStringExtra("screen_name");
            queryParameter2 = intent.getStringExtra("password");
        }
        long g = ab().g();
        if (aj.b(queryParameter)) {
            iy.a(g, "login:::username:prefill");
            this.g.setText(queryParameter);
            if (aj.a(queryParameter2)) {
                this.h.requestFocus();
            } else {
                this.h.setText(queryParameter2);
                this.i.requestFocus();
            }
        } else {
            iy.a(g, "login:::username:prefill_fail");
        }
        this.g.addTextChangedListener(new iq(this));
        this.h.setOnFocusChangeListener(new ir(this, g));
        this.i.setEnabled(c());
        if (this.n.a()) {
            TypefacesTextView typefacesTextView = (TypefacesTextView) findViewById(2131952427);
            if (typefacesTextView != null) {
                typefacesTextView.setText(2131362988);
            }
        }
        if (AppConfig.m().l() && !aq.b((Context) this) && b.a() == 0) {
            this.g.setLabelText((CharSequence) "@twitter.com email");
        }
        if (bundle == null) {
            bbu.a((TwitterScribeLog) new TwitterScribeLog(g).b("login::::impression"));
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(g);
            String[] strArr = new String[5];
            strArr[0] = "login";
            strArr[1] = BuildConfig.VERSION_NAME;
            strArr[2] = this.a ? "switch_account" : "logged_out";
            strArr[3] = BuildConfig.VERSION_NAME;
            strArr[4] = "impression";
            bbu.a((TwitterScribeLog) twitterScribeLog.b(strArr));
            io.b(this, "login");
            if (data != null) {
                b(data);
            }
            s();
        } else {
            this.j = bundle.getString("reqId");
            this.k = bundle.getBoolean("passwordResetLogin", false);
            this.l = bundle.getInt("loginVerificationCause");
            aa().a(this.j, this.c);
            this.e = bundle.getString("prefill_type");
            this.f = bundle.getString("prefill_value");
            Parcelable[] parcelableArray = bundle.getParcelableArray("1fa_factors");
            if (parcelableArray == null || parcelableArray.length <= 0) {
                this.p = null;
            } else {
                this.p = new OneFactorEligibleFactor[parcelableArray.length];
                for (int i = 0; i < parcelableArray.length; i++) {
                    this.p[i] = (OneFactorEligibleFactor) parcelableArray[i];
                }
            }
            this.o = bundle.getString("1fa_identifier");
        }
        t();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("reqId", this.j);
        bundle.putBoolean("passwordResetLogin", this.k);
        bundle.putInt("loginVerificationCause", this.l);
        bundle.putString("prefill_type", this.e);
        bundle.putString("prefill_value", this.f);
        if (this.p != null) {
            bundle.putParcelableArray("1fa_factors", this.p);
        }
        if (this.o != null) {
            bundle.putString("1fa_identifier", this.o);
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        aa().e(this.j);
    }

    public void onResume() {
        super.onResume();
        switch (is.a[ab().b().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if ("android.intent.action.MAIN".equals(getIntent().getAction())) {
                    setResult(-1);
                    MainActivity.a((Activity) this, MainActivity.c);
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                showDialog(1);
            case WireMessage.WIRE_AUTH /*3*/:
                removeDialog(1);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                removeDialog(1);
            default:
        }
    }

    public void onBackPressed() {
        if (this.a) {
            AccountAuthenticatorResponse accountAuthenticatorResponse = (AccountAuthenticatorResponse) getIntent().getParcelableExtra("accountAuthenticatorResponse");
            if (accountAuthenticatorResponse != null) {
                accountAuthenticatorResponse.onError(4, BuildConfig.VERSION_NAME);
            }
        }
        super.onBackPressed();
    }

    public int b(w wVar) {
        int b = super.b(wVar);
        ViewGroup j = wVar.j();
        if (!this.n.a()) {
            return b;
        }
        View inflate = getLayoutInflater().inflate(2130968961, j, false);
        inflate.findViewById(2131952670).setOnClickListener(this);
        j.setCustomView(inflate);
        return 2;
    }

    public boolean a(w wVar) {
        super.a(wVar);
        if (this.n.a()) {
            wVar.a(2132017189);
            AppConfig m = AppConfig.m();
            if (m.a() || m.b()) {
                wVar.a(2132017190);
            }
        } else {
            wVar.a(2132017173);
        }
        return true;
    }

    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case ControlMessage.CONTROL_BAN /*8*/:
                Dialog progressDialog = new ProgressDialog(this);
                progressDialog.setProgressStyle(0);
                if (i == 1) {
                    progressDialog.setMessage(getText(2131362985));
                } else {
                    progressDialog.setMessage(getText(2131363802));
                }
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(false);
                return progressDialog;
            default:
                return super.onCreateDialog(i);
        }
    }

    public void onClick(View view) {
        long g = ab().g();
        switch (view.getId()) {
            case 2131952073:
                b(2131364348);
            case 2131952670:
                f();
            case 2131952675:
                if (c()) {
                    e();
                }
            case 2131952676:
                startActivity(new Intent(this, AdvancedDiscoSettingsActivity.class));
            case 2131953006:
                u();
                ks.a(getApplicationContext(), 7, zs.a(this.p, FactorType.SMS), this).a(getSupportFragmentManager());
                iy.a(g, "login::1fa_eligible_sheet:send_sms:click");
            case 2131953007:
                u();
                a(FactorType.EMAIL);
                iy.a(g, "login::1fa_eligible_sheet:send_email:click");
            case 2131953008:
                this.p = null;
                u();
            default:
        }
    }

    private void a(FactorType factorType) {
        showDialog(8);
        new ks(getApplicationContext(), this, factorType).a(this.g.getText().toString());
    }

    private void b(int i) {
        if (d.a("native_password_reset_enabled")) {
            startActivityForResult(new Intent(this, PasswordResetActivity.class).putExtra("account_id", m()), 4);
        } else {
            al.a(this, m(), i);
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        this.i.setEnabled(c());
    }

    private boolean c() {
        return this.g.length() > 0 && this.h.length() > 0 && (aq.a((Context) this, AppConfig.m().l(), this.g.getText().toString()) || aq.b((Context) this));
    }

    public boolean onSearchRequested() {
        return false;
    }

    private void e() {
        r.b(this, this.h, false);
        String m = m();
        String obj = this.h.getText().toString();
        if (!m.equals(this.f)) {
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(ab().g());
            String[] strArr = new String[1];
            strArr[0] = String.format("login:identifier:%s::prefill_changed", new Object[]{this.e});
            bbu.a(twitterScribeLog.b(strArr));
        }
        bbu.a((TwitterScribeLog) new TwitterScribeLog(ab().g()).b("login:form:::submit"));
        this.j = aa().a(m, obj, this.c);
        showDialog(1);
    }

    private void b(Uri uri) {
        if (d.a("native_password_reset_enabled")) {
            String queryParameter = uri.getQueryParameter("screen_name");
            CharSequence queryParameter2 = uri.getQueryParameter("login_verification_user_id");
            String queryParameter3 = uri.getQueryParameter("login_verification_request_id");
            CharSequence queryParameter4 = uri.getQueryParameter("login_verification_cause");
            String queryParameter5 = uri.getQueryParameter("login_verification_request_url");
            if (!aj.a((CharSequence) queryParameter) && !aj.a(queryParameter2) && !aj.a((CharSequence) queryParameter3) && !aj.a(queryParameter4)) {
                try {
                    long parseLong = Long.parseLong(queryParameter2);
                    this.l = Integer.parseInt(queryParameter4);
                    Session a = aa().a(queryParameter);
                    if (this.l == 1) {
                        CharSequence queryParameter6 = uri.getQueryParameter("login_verification_type");
                        if (!aj.a(queryParameter6)) {
                            try {
                                int parseInt = Integer.parseInt(queryParameter6);
                                this.k = true;
                                this.c.a(a, new LoginVerificationRequiredResponse(parseLong, queryParameter3, parseInt, queryParameter5, this.l));
                                return;
                            } catch (NumberFormatException e) {
                                return;
                            }
                        }
                        return;
                    }
                    showDialog(1);
                    this.k = true;
                    this.j = aa().a(a, parseLong, queryParameter3, null, this.c);
                } catch (NumberFormatException e2) {
                }
            }
        }
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == 2131953456) {
            f();
            return true;
        } else if (a == 2131953457) {
            startActivity(new Intent(this, AboutActivity.class));
            return true;
        } else if (a == 2131953485) {
            startActivity(new Intent(this, AdvancedDiscoSettingsActivity.class).putExtra("extra_is_signup_process", true));
            return true;
        } else if (a != 2131953484) {
            return super.a(acVar);
        } else {
            startActivity(new Intent(this, ProxySettingsActivity.class));
            return true;
        }
    }

    private void f() {
        Intent intent = getIntent();
        Parcelable flowData = new FlowData();
        flowData.g(this.m);
        flowData.a(!this.m);
        flowData.c(this.a);
        flowData.b(this.n.c());
        Intent putExtra = new Intent(this, FlowActivity.class).putExtra("flow_data", flowData);
        bbu.a(new TwitterScribeLog(ab().g()).b("login:form::signup:click"));
        if (intent.hasExtra("android.intent.extra.INTENT")) {
            putExtra.putExtra("android.intent.extra.INTENT", intent.getParcelableExtra("android.intent.extra.INTENT"));
        }
        startActivityForResult(putExtra, 1);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    if (!this.a) {
                        Intent intent2 = (Intent) getIntent().getParcelableExtra("android.intent.extra.INTENT");
                        if (intent2 != null) {
                            startActivity(intent2);
                        }
                    }
                    setResult(-1, intent);
                    bp.a();
                    finish();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                if (i2 == -1) {
                    setResult(-1, intent);
                    finish();
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (i2 == -1) {
                    b(intent.getData());
                }
            case mx.UserView_actionButtonPaddingRight /*5*/:
                if (i2 == -1) {
                    a((Session) intent.getExtras().getParcelable("session"), intent.getExtras().getString("serialized_user"));
                }
            default:
                super.onActivityResult(i, i2, intent);
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == -1) {
                    b(2131364347);
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (i2 == -2) {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getString(2131364323))));
                    bbu.a(new TwitterScribeLog(ab().g()).b("login::use_temporary_password_prompt:get_help:click"));
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (i2 == -2) {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getString(2131364345))));
                }
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                long g = ab().g();
                if (i2 == -1) {
                    iy.a(g, "login::1fa_send_sms_confirm_dialog:ok:click");
                    a(FactorType.SMS);
                    return;
                }
                iy.a(g, "login::1fa_send_sms_confirm_dialog:cancel:click");
            default:
        }
    }

    private void i() {
        ((ec) ((ec) ((ec) ((ec) new ec(3).a(2131364067)).b(2131364066)).d(2131363218)).f(2131362743)).i().a(getSupportFragmentManager());
        bbu.a(new TwitterScribeLog(ab().g()).b("login::use_temporary_password_prompt::impression"));
    }

    private void j() {
        ((ec) ((ec) ((ec) ((ec) new ec(4).a(2131363483)).b(2131363484)).d(2131364022)).f(2131363483)).i().a(getSupportFragmentManager());
    }

    private void l() {
        ((ec) ((ec) new ec(5).b(2131362951)).d(2131363218)).i().a(getSupportFragmentManager());
        bbu.a(new TwitterScribeLog(ab().g()).b("login::ambiguity_alert::impression"));
    }

    private String m() {
        return this.g.getText().toString();
    }

    void a(Session session, String str) {
        c M = M();
        String e = session.e();
        long g = ab().g();
        iy.a(this, session, this.a, str, aa());
        iy.a(this, this.a, g);
        if (!this.m) {
            Intent intent = new Intent(this, DispatchActivity.class);
            if (getIntent().hasExtra("android.intent.extra.INTENT")) {
                intent.putExtra("android.intent.extra.INTENT", getIntent().getParcelableExtra("android.intent.extra.INTENT"));
            }
            startActivity(intent.setFlags(67108864));
        }
        setResult(-1, new Intent().putExtra("AbsFragmentActivity_account_name", e));
        AppEventTrack.a(getApplicationContext(), EventType.Login, new String[0]);
        r();
        String[] strArr = new String[1];
        strArr[0] = String.format("login:identifier:%s::success", new Object[]{this.e});
        iy.a(g, strArr);
        M.a(g, "login::::success", false);
        az.a((Context) this).a(bex.a((Context) this, session), null);
        finish();
    }

    private void r() {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(ab().g()).b("login::::success");
        bbw.h("app_download_client_event");
        bbw.a("4", ak.a());
        com.twitter.library.api.d a = u.a.a();
        if (a != null) {
            bbw.a("6", a.a());
            bbw.a(a.b());
        }
        bbu.a(bbw);
    }

    public boolean a(TwitterEditText twitterEditText) {
        if (this.h != twitterEditText) {
            return false;
        }
        this.h.removeTextChangedListener(this);
        int selectionStart = this.h.getSelectionStart();
        int selectionEnd = this.h.getSelectionEnd();
        if (this.h.getInputType() != 145) {
            this.h.setInputType(145);
            this.h.setExtraState(b);
        } else {
            this.h.setInputType(129);
            this.h.setExtraState(null);
        }
        this.h.setSelection(selectionStart, selectionEnd);
        this.h.addTextChangedListener(this);
        return true;
    }

    private void s() {
        if (aj.a(this.g.getText())) {
            CharSequence c = f.a(this).c();
            if (aj.b(c)) {
                this.g.setText(c);
                this.e = NotificationCompatApi21.CATEGORY_EMAIL;
                this.f = c;
                this.h.requestFocus();
            }
        }
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(ab().g());
        String[] strArr = new String[1];
        strArr[0] = String.format("login:identifier:%s::prefill", new Object[]{this.e});
        bbu.a(twitterScribeLog.b(strArr));
    }

    private void t() {
        PopupEditText popupEditText = (PopupEditText) this.g;
        popupEditText.setAdapter(new ArrayAdapter(this, 2130969444, vw.a(this)));
        iu iuVar = new iu(this, popupEditText);
    }

    public void a(FactorType factorType, a aVar) {
        removeDialog(8);
        startActivityForResult(new Intent(this, OneFactorAuthVerificationActivity.class).putExtra("1fa_login", true).putExtra("auth_method", factorType.ordinal()).putExtra("identifier", this.g.getText().toString()).putExtra("request_id", aVar.a).putExtra("possible_1fa", this.p), 5);
    }

    public void a(int i) {
        removeDialog(8);
        Toast.makeText(getApplicationContext(), i, 1).show();
    }

    public void a(Dialog dialog, int i, Bundle bundle) {
        if (i == 6) {
            int i2;
            if (iy.b.matcher(this.o).matches()) {
                i2 = 2131362962;
            } else if (cew.c.matcher(this.o).matches()) {
                i2 = 2131362961;
            } else {
                i2 = 2131362963;
            }
            ((TextView) dialog.findViewById(2131953005)).setText(i2);
            for (OneFactorEligibleFactor oneFactorEligibleFactor : this.p) {
                View findViewById;
                if (oneFactorEligibleFactor.b == FactorType.EMAIL) {
                    findViewById = dialog.findViewById(2131953007);
                } else if (oneFactorEligibleFactor.b == FactorType.SMS) {
                    findViewById = dialog.findViewById(2131953006);
                } else {
                    findViewById = null;
                }
                if (findViewById != null) {
                    findViewById.setVisibility(0);
                    findViewById.setOnClickListener(this);
                }
            }
            dialog.findViewById(2131953008).setOnClickListener(this);
        }
    }

    private void a(List<OneFactorEligibleFactor> list) {
        this.o = this.g.getText().toString();
        this.p = (OneFactorEligibleFactor[]) list.toArray(new OneFactorEligibleFactor[list.size()]);
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ((ec) ((ec) new ec(6).g()).g(2130969154)).i().a((k) this);
        long g = ab().g();
        promptDialogFragment.a(getSupportFragmentManager(), "tag_1fa_dialog");
        iy.a(g, "login::1fa_eligible_sheet::impression");
        for (OneFactorEligibleFactor oneFactorEligibleFactor : list) {
            if (oneFactorEligibleFactor.b == FactorType.EMAIL) {
                iy.a(g, "login::1fa_eligible_sheet:send_email:impression");
            } else if (oneFactorEligibleFactor.b == FactorType.SMS) {
                iy.a(g, "login::1fa_eligible_sheet:send_sms:impression");
            }
        }
    }

    private void u() {
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) getSupportFragmentManager().findFragmentByTag("tag_1fa_dialog");
        if (promptDialogFragment != null) {
            promptDialogFragment.dismissAllowingStateLoss();
        }
    }
}
