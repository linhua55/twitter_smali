package com.twitter.android;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.j;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.d;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.login.OneFactorEligibleFactor;
import com.twitter.model.login.OneFactorEligibleFactor.FactorType;
import com.twitter.model.login.a;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.collection.n;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.bcx;
import defpackage.beo;
import defpackage.zs;
import java.util.HashMap;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class OneFactorAuthVerificationActivity extends TwitterFragmentActivity implements OnClickListener, ku, lx, j, m {
    private FactorType a;
    private String b;
    private String c;
    private String d;
    private OneFactorEligibleFactor[] e;
    private HashMap<Integer, FactorType> f;
    private int g;
    private PromptDialogFragment h;
    private ProgressDialogFragment i;
    private View j;
    private View k;

    public OneFactorAuthVerificationActivity() {
        this.e = null;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("auth_method", this.a.ordinal());
        bundle.putString("obfuscated_destination", this.b);
        bundle.putString("identifier", this.c);
        bundle.putString("request_id", this.d);
        bundle.putParcelableArray("auth_factors", this.e);
        bundle.putInt("current_fragment", this.g);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.a(false);
        tVar.a(0);
        tVar.d(2130968827);
        tVar.c(false);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        int i = 0;
        super.a(bundle, dVar);
        findViewById(2131952009).setVisibility(8);
        TwitterButton twitterButton = (TwitterButton) findViewById(bcx.skip);
        twitterButton.setText(2131362966);
        twitterButton.setOnClickListener(this);
        this.j = findViewById(2131952024);
        this.k = findViewById(2131952482);
        Bundle extras = getIntent().getExtras();
        if (bundle == null) {
            String string;
            this.a = extras != null ? FactorType.values()[extras.getInt("auth_method", 2)] : FactorType.OTHER;
            if (extras != null) {
                string = extras.getString("identifier");
            } else {
                string = null;
            }
            this.c = string;
            if (extras != null) {
                string = extras.getString("request_id");
            } else {
                string = null;
            }
            this.d = string;
            if (extras != null) {
                Parcelable[] parcelableArray = extras.getParcelableArray("possible_1fa");
                this.e = new OneFactorEligibleFactor[parcelableArray.length];
                for (int i2 = 0; i2 < parcelableArray.length; i2++) {
                    this.e[i2] = (OneFactorEligibleFactor) parcelableArray[i2];
                }
            } else {
                this.e = null;
            }
            this.b = zs.a(this.e, this.a);
            a(this.a);
            return;
        }
        this.a = FactorType.values()[bundle.getInt("auth_method")];
        this.c = bundle.getString("identifier");
        this.d = bundle.getString("request_id");
        Parcelable[] parcelableArray2 = bundle.getParcelableArray("auth_factors");
        this.e = new OneFactorEligibleFactor[parcelableArray2.length];
        while (i < parcelableArray2.length) {
            this.e[i] = (OneFactorEligibleFactor) parcelableArray2[i];
            i++;
        }
        this.b = bundle.getString("obfuscated_destination");
        this.g = bundle.getInt("current_fragment");
        c();
    }

    private void a(FactorType factorType) {
        if (zs.a(getApplicationContext(), factorType)) {
            b(2);
            this.j.setVisibility(8);
            return;
        }
        b(1);
        this.j.setVisibility(0);
    }

    private void c() {
        if (this.g == 2) {
            this.j.setVisibility(8);
            this.k.setVisibility(8);
            return;
        }
        this.j.setVisibility(0);
        this.k.setVisibility(0);
    }

    public void l() {
    }

    public void m() {
    }

    public void U_() {
        b(1);
    }

    public void p() {
        e();
    }

    public void d(String str) {
        d(2131363802);
        bg.a().a(ab(), this.c, this.d, str, new kw());
    }

    public void a(String str, int i) {
        d(2131363802);
        bg.a().a(ab(), this.c, this.d, str, new kw());
        ks.a("1fa_verify:1fa_verify_sms_waiting:::pin_received");
    }

    private void e() {
        if (this.h == null) {
            this.h = (PromptDialogFragment) ((ec) new ec(1).a(f())).i().a((m) this).a((j) this);
        }
        this.h.a(getSupportFragmentManager());
        if (s() != null) {
            ks.a("1fa_verify", s(), "did_not_receive_code::impression");
        }
    }

    private CharSequence[] f() {
        n d = n.d();
        this.f = new HashMap();
        if (this.a == FactorType.EMAIL) {
            d.c(Integer.valueOf(2131362974));
            this.f.put(Integer.valueOf(0), FactorType.EMAIL);
        } else {
            d.c(Integer.valueOf(2131362976));
            this.f.put(Integer.valueOf(0), FactorType.SMS);
        }
        for (OneFactorEligibleFactor oneFactorEligibleFactor : this.e) {
            if (oneFactorEligibleFactor.b != this.a) {
                int i = d.i();
                switch (kv.a[oneFactorEligibleFactor.b.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        d.c(Integer.valueOf(2131362969));
                        this.f.put(Integer.valueOf(i), FactorType.EMAIL);
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        d.c(Integer.valueOf(2131362971));
                        this.f.put(Integer.valueOf(i), FactorType.SMS);
                        break;
                    default:
                        break;
                }
            }
        }
        d.c(Integer.valueOf(2131362041));
        List list = (List) d.q();
        CharSequence[] charSequenceArr = new CharSequence[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            charSequenceArr[i2] = getString(((Integer) list.get(i2)).intValue());
        }
        return charSequenceArr;
    }

    private void b(int i) {
        View findViewById = findViewById(2131952482);
        this.g = i;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (this.a == FactorType.SMS) {
                    ks.a("1fa_verify:1fa_verify_sms_entry:::impression");
                } else if (this.a == FactorType.EMAIL) {
                    ks.a("1fa_verify:1fa_verify_email:::impression");
                }
                a(c(i), "manual_entry");
                this.j.setVisibility(0);
                findViewById.setVisibility(0);
            case WireMessage.WIRE_CONTROL /*2*/:
                ks.a("1fa_verify:1fa_verify_sms_waiting:::impression");
                a(c(i), "pin_waiting");
                findViewById.setVisibility(8);
                this.j.setVisibility(8);
            default:
        }
    }

    private void a(Fragment fragment, String str) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.beginTransaction().replace(2131951923, fragment, str).commit();
        supportFragmentManager.executePendingTransactions();
    }

    private Fragment c(int i) {
        Fragment manualEntryPinFragment;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                manualEntryPinFragment = new ManualEntryPinFragment();
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                manualEntryPinFragment = new PinWaitingFragment();
                break;
            default:
                manualEntryPinFragment = null;
                break;
        }
        if (manualEntryPinFragment != null) {
            manualEntryPinFragment.a(new h().a("1fa_login", true).a("1fa_type", this.a.ordinal()).b("1fa_destination", this.b).a("should_intercept_pin", zs.a(getApplicationContext(), this.a)).c());
        }
        return manualEntryPinFragment;
    }

    private void a(Session session, String str) {
        setResult(-1, new Intent().putExtra("session", session).putExtra("serialized_user", str));
        finish();
    }

    public String q() {
        return null;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 1) {
            this.h = null;
            FactorType factorType = (FactorType) this.f.get(Integer.valueOf(i2));
            if (factorType != null) {
                String s = s();
                if (factorType == FactorType.SMS) {
                    i();
                    if (s != null) {
                        ks.a("1fa_verify", s, "did_not_receive_code:send_sms:click");
                    }
                } else if (factorType == FactorType.EMAIL) {
                    b(factorType);
                    if (s != null) {
                        ks.a("1fa_verify", s, "did_not_receive_code:send_email:click");
                    }
                }
            }
        } else if (i == 2 && i2 == -1) {
            b(FactorType.SMS);
        }
    }

    private void i() {
        ks.a(this, 2, zs.a(this.e, FactorType.SMS), this).a(getSupportFragmentManager());
    }

    private void b(FactorType factorType) {
        d(2131363802);
        new ks(getApplicationContext(), this, factorType).a(this.c);
    }

    private String c(FactorType factorType) {
        if (this.e != null) {
            for (OneFactorEligibleFactor oneFactorEligibleFactor : this.e) {
                if (oneFactorEligibleFactor.b == factorType) {
                    return oneFactorEligibleFactor.c;
                }
            }
        }
        return null;
    }

    public void a(DialogInterface dialogInterface, int i) {
        this.h = null;
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (i == 1) {
            int i2;
            beo beo = (beo) xVar;
            if (!beo.U()) {
                int[] a = an.a(((aa) xVar.l().b()).c);
                if (a != null && a.length > 0) {
                    switch (a[0]) {
                        case 245:
                            i2 = 2131362973;
                            break;
                        default:
                            i2 = 2131362972;
                            break;
                    }
                }
                i2 = 2131362972;
            } else {
                this.d = beo.e().a;
                i2 = 2131362977;
            }
            Toast.makeText(getApplicationContext(), i2, 1).show();
        }
    }

    private void a(int[] iArr) {
        int i = 2131362952;
        if (iArr != null && iArr.length > 0) {
            switch (iArr[0]) {
                case 235:
                    i = 2131362967;
                    break;
                case 236:
                    i = 2131362968;
                    break;
                case 246:
                    i = 2131362973;
                    break;
                default:
                    if (!TelephonyUtil.i().h()) {
                        i = 2131362957;
                        break;
                    }
                    break;
            }
        } else if (!TelephonyUtil.i().h()) {
            i = 2131362957;
        }
        j();
        Toast.makeText(this, i, 1).show();
    }

    private void j() {
        ManualEntryPinFragment manualEntryPinFragment = (ManualEntryPinFragment) getSupportFragmentManager().findFragmentByTag("manual_entry");
        if (manualEntryPinFragment != null && manualEntryPinFragment.ad()) {
            manualEntryPinFragment.f();
        }
    }

    public void onClick(View view) {
        if (view.getId() == bcx.skip) {
            p();
        }
    }

    private void d(int i) {
        if (this.i == null) {
            this.i = ProgressDialogFragment.a(i);
            this.i.setRetainInstance(true);
            this.i.a(getSupportFragmentManager(), null);
        }
    }

    private void r() {
        if (this.i != null) {
            this.i.dismissAllowingStateLoss();
            this.i = null;
        }
    }

    public void a(FactorType factorType, a aVar) {
        r();
        this.d = aVar.a;
        this.a = factorType;
        this.b = c(this.a);
        a(this.a);
        Toast.makeText(getApplicationContext(), 2131362975, 1).show();
    }

    public void a(int i) {
        r();
        Toast.makeText(getApplicationContext(), i, 1).show();
    }

    private String s() {
        if (this.a == FactorType.EMAIL) {
            return "1fa_verify_email";
        }
        if (this.a != FactorType.SMS) {
            return null;
        }
        String str;
        if (this.g == 2) {
            str = "waiting";
        } else {
            str = "entry";
        }
        return String.format("1fa_verify_sms_%s", new Object[]{str});
    }
}
