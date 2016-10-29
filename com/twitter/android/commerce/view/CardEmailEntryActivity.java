package com.twitter.android.commerce.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import android.widget.Toast;
import com.twitter.android.commerce.network.ProfileSaveCallback;
import com.twitter.android.commerce.network.ProfileSaveCallback.RequestType;
import com.twitter.android.commerce.network.a;
import com.twitter.android.commerce.network.b;
import com.twitter.android.commerce.network.e;
import com.twitter.android.commerce.network.j;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.d;
import com.twitter.android.commerce.util.g;
import com.twitter.android.commerce.widget.creditcard.CardForm;
import com.twitter.android.commerce.widget.creditcard.h;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.ac;
import com.twitter.library.commerce.model.f;
import com.twitter.library.commerce.model.m;
import com.twitter.library.service.x;
import com.twitter.model.core.Tweet;
import com.twitter.util.ab;
import defpackage.bsn;
import defpackage.bss;
import defpackage.btv;
import java.util.List;

/* compiled from: Twttr */
public class CardEmailEntryActivity extends TwitterFragmentActivity implements OnClickListener, b, j, h {
    private CardForm a;
    private EditText b;
    private LinearLayout c;
    private d d;
    private Button e;
    private boolean f;
    private e g;
    private Tweet h;
    private boolean i;
    private boolean j;
    private boolean k;

    public t a(Bundle bundle, t tVar) {
        getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
        tVar.d(2130968680);
        tVar.b(14);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        m mVar;
        super.b(bundle, tVar);
        this.c = (LinearLayout) findViewById(2131952091);
        this.a = new CardForm(this);
        this.c.addView(this.a);
        this.b = (EditText) findViewById(2131952096);
        this.e = (Button) findViewById(2131952106);
        this.a.a((h) this);
        this.a.getEntry().k();
        this.e.setOnClickListener(this);
        e();
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Toast.makeText(this, getResources().getString(2131362179), 1).show();
            finish();
        }
        if (c.b()) {
            mVar = (m) ab.a(extras, "commerce_profile_email", m.a);
        } else {
            mVar = null;
        }
        this.i = extras.getBoolean("commerce_phone_required", false);
        this.j = extras.getBoolean("commerce_billing_required", false);
        this.h = (Tweet) extras.getParcelable("commerce_buynow_tweet");
        this.k = extras.getBoolean("commerce_launched_from_settings", false);
        if (!c.b()) {
            this.b.setVisibility(8);
        }
        if (c.b() && mVar != null) {
            a(mVar);
        }
        a(false);
        this.g = new e(this, extras);
    }

    public void c() {
    }

    public void onDestroy() {
        this.a.b(this);
        super.onDestroy();
    }

    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        Y().a(getString(2131362241));
    }

    protected void onStop() {
        if (!this.f) {
            c.a(this, this.h, c.a(this.k, "store_profile::exit"), BuildConfig.VERSION_NAME);
            c.a((Context) this, this.h, PromotedEvent.BUYNOW_STORE_PROFILE_EXIT);
        }
        super.onStop();
    }

    public void onClick(View view) {
        if (view.getId() == this.e.getId()) {
            List c = this.a.getCreditCard().c();
            m mVar = null;
            if (c.b()) {
                mVar = new m();
                mVar.a(this.b.getText().toString());
                c.addAll(mVar.e());
            }
            if (!c.isEmpty() || mVar == null) {
                f().d(c);
                this.a.getEntry().j();
                return;
            }
            az.a((Context) this).a(new bsn(this, bg.a().c(), mVar), new a(this));
        }
    }

    private void a(boolean z) {
        int i;
        if (z) {
            i = 2131363531;
        } else {
            i = 2131362081;
        }
        this.e.setText(i);
        this.e.setEnabled(!z);
    }

    private void e() {
        String string = getString(2131362239, new Object[]{getString(2131362266)});
        TextView textView = (TextView) findViewById(2131952107);
        SpannableString spannableString = new SpannableString(string);
        g.a(spannableString, string, r1, "https://twitter.com/privacy");
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableString, BufferType.SPANNABLE);
    }

    private void a(m mVar) {
        this.b.setText(mVar.toString());
    }

    private synchronized d f() {
        if (this.d == null) {
            this.d = new a(this, this, this.a.getEntry());
        }
        return this.d;
    }

    public void a() {
        az a = az.a((Context) this);
        x bss = new bss(this, this.g.a(), false, false, null, null);
        a(true);
        a.a(bss, new ProfileSaveCallback(this, RequestType.ADDRESS_AND_SIGNATURE));
        c.a(this, this.h, c.a(this.k, "store_profile::submit"), BuildConfig.VERSION_NAME);
        c.a((Context) this, this.h, PromotedEvent.BUYNOW_STORE_PROFILE_SUBMIT);
    }

    public void a(Bundle bundle) {
        a(RequestType.ADDRESS_AND_SIGNATURE, bundle);
    }

    public void c(Bundle bundle) {
        boolean z;
        if (bundle != null) {
            String string = bundle.getString("createaddr_bundle_signature");
            String string2 = bundle.getString("createaddr_bundle_timestamp");
            if (!(string == null || string2 == null)) {
                az a = az.a((Context) this);
                Session a2 = this.g.a();
                f creditCard = this.a.getCreditCard();
                x btv = new btv((Context) this, a2, null, null, creditCard, string, string2, false, creditCard instanceof ac);
                a(true);
                a.a(btv, new ProfileSaveCallback(this, RequestType.PROFILE));
                z = false;
                if (z) {
                    a(false);
                    Toast.makeText(this, getResources().getString(2131362179), 1).show();
                }
            }
        }
        z = true;
        if (z) {
            a(false);
            Toast.makeText(this, getResources().getString(2131362179), 1).show();
        }
    }

    public void d(Bundle bundle) {
        boolean z = false;
        if (bundle != null) {
            String a = a(bundle, true);
            if (a != null) {
                Intent intent;
                if (this.j || this.i) {
                    intent = new Intent(this, ProfileEntryBillingActivity.class);
                    intent.putExtras(getIntent());
                    intent.putExtra("commerce_billing_same_as_shipping", false);
                    intent.putExtra("commerce_profile_id_added", a);
                    Object creditCard = this.a.getCreditCard();
                    if (creditCard != null) {
                        ab.a(intent, "commerce_cc_info", creditCard, CreditCard.d);
                    }
                    startActivityForResult(intent, 2);
                    if (!z) {
                        i();
                    }
                }
                intent = new Intent();
                intent.putExtra("commerce_profile_id_added", a);
                setResult(-1, intent);
                finish();
                if (!z) {
                    i();
                }
            }
        }
        z = true;
        if (!z) {
            i();
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i != 2 || i2 != -1) {
            return;
        }
        if (intent == null || a(intent.getExtras(), false) == null) {
            i();
        } else {
            finish();
        }
    }

    private void i() {
        c.a(this, this.h, c.a(this.k, "store_profile::failure"), BuildConfig.VERSION_NAME);
        c.a((Context) this, this.h, PromotedEvent.BUYNOW_STORE_PROFILE_FAILURE);
        Toast.makeText(this, getResources().getString(2131362179), 1).show();
        a(false);
    }

    private String a(Bundle bundle, boolean z) {
        if (bundle == null) {
            return null;
        }
        String string;
        if (z) {
            string = bundle.getString("storeprofile_bundle_profileid");
        } else {
            string = bundle.getString("commerce_profile_id_added");
        }
        if (string == null) {
            return null;
        }
        c.a(this, this.h, c.a(this.k, "store_profile::success"), BuildConfig.VERSION_NAME);
        c.a((Context) this, this.h, PromotedEvent.BUYNOW_STORE_PROFILE_SUCCESS);
        Intent intent = new Intent();
        intent.putExtra("commerce_profile_id_added", string);
        setResult(-1, intent);
        this.f = true;
        return string;
    }

    public void e(Bundle bundle) {
        a(RequestType.ADDRESS_AND_SIGNATURE, bundle);
    }

    public void f(Bundle bundle) {
        a(RequestType.PROFILE, bundle);
    }

    private void a(RequestType requestType, Bundle bundle) {
        a(false);
        if (requestType == RequestType.PROFILE) {
            c.a(this, this.h, c.a(this.k, "store_profile::failure"), BuildConfig.VERSION_NAME);
            c.a((Context) this, this.h, PromotedEvent.BUYNOW_STORE_PROFILE_FAILURE);
        }
        f().a((Context) this, bundle);
        this.a.getEntry().j();
    }
}
