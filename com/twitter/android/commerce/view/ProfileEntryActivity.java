package com.twitter.android.commerce.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.commerce.network.ProfileSaveCallback;
import com.twitter.android.commerce.network.ProfileSaveCallback.RequestType;
import com.twitter.android.commerce.network.j;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.d;
import com.twitter.android.commerce.view.ProfileEntryBase.UsageMode;
import com.twitter.android.commerce.widget.creditcard.CardEntryContainer;
import com.twitter.android.commerce.widget.creditcard.CardForm;
import com.twitter.android.commerce.widget.creditcard.h;
import com.twitter.app.common.base.t;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.a;
import com.twitter.library.commerce.model.ac;
import com.twitter.library.commerce.model.f;
import com.twitter.library.commerce.model.m;
import com.twitter.library.service.x;
import com.twitter.util.ab;
import com.twitter.util.aj;
import defpackage.bsg;
import defpackage.btv;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ProfileEntryActivity extends ProfileEntryBase implements j, h {
    private CardForm x;
    private CreditCard y;

    public void b(Bundle bundle, t tVar) {
        m mVar;
        super.b(bundle, tVar);
        a((List) this.u.getSerializable("commerce_allowed_states_for_item"));
        this.w = (LinearLayout) findViewById(2131952091);
        this.x = new CardForm(this);
        this.w.addView(this.x);
        this.x.a((h) this);
        this.x.getEntry().k();
        this.x.getEntry().setNextExternalView(this.b);
        this.m.setOnClickListener(this);
        if (c.b()) {
            mVar = (m) ab.a(this.u, "commerce_profile_email", m.a);
        } else {
            mVar = null;
        }
        a aVar = (a) ab.a(this.u, "commerce_address_object", a.a);
        if (aVar != null) {
            this.o = UsageMode.EDIT;
            a(aVar);
            findViewById(2131952107).setVisibility(8);
        } else {
            CreditCard creditCard = (CreditCard) ab.a(this.u, "commerce_partial_card_object", CreditCard.d);
            if (creditCard != null) {
                a(creditCard);
            }
        }
        if (!c.b()) {
            this.v.setVisibility(8);
        }
        if (c.b() && mVar != null) {
            a(mVar);
        }
        m();
    }

    protected void e() {
        c.a((Context) this, (ViewGroup) findViewById(2131952092), Integer.valueOf(2130839118), 2131362277, true, false);
    }

    private void a(CreditCard creditCard) {
        this.y = creditCard;
        this.o = UsageMode.ADD_PARTIAL;
        this.x.setPartialCreditCard(creditCard);
        m();
    }

    private void l() {
        this.y = null;
        this.o = UsageMode.ADD;
        m();
    }

    private void m() {
        TextView textView = (TextView) ((ViewGroup) findViewById(2131952092)).findViewById(2131952117);
        switch (ag.a[this.o.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                textView.setVisibility(8);
            case WireMessage.WIRE_CONTROL /*2*/:
                textView.setVisibility(0);
                textView.setText(2131362097);
            case WireMessage.WIRE_AUTH /*3*/:
                textView.setVisibility(0);
                textView.setText(2131362098);
            default:
        }
    }

    public void c() {
        l();
    }

    public void onDestroy() {
        if (this.x != null) {
            this.x.b(this);
        }
        super.onDestroy();
    }

    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this.o != UsageMode.ADD) {
            Y().a(getString(2131362240));
        } else {
            Y().a(getString(2131362244));
        }
    }

    protected void onStop() {
        if (!this.n) {
            c.a(this, this.q, c.a(this.r, "store_profile::exit"), BuildConfig.VERSION_NAME);
            c.a((Context) this, this.q, PromotedEvent.BUYNOW_STORE_PROFILE_EXIT);
        }
        super.onStop();
    }

    public void onClick(View view) {
        if (view.getId() == this.m.getId()) {
            m mVar;
            f creditCard = this.x.getCreditCard();
            if (c.b()) {
                mVar = new m();
                mVar.a(this.v.getText().toString());
            } else {
                mVar = null;
            }
            a i = i();
            creditCard.a(i);
            List c = creditCard.c();
            c.addAll(i.a());
            if (c.b()) {
                c.addAll(mVar.e());
            }
            if (c.size() == 0) {
                String i2;
                az a = az.a((Context) this);
                Session a2 = this.p.a();
                if (this.o == UsageMode.ADD_PARTIAL) {
                    i2 = creditCard.i();
                } else {
                    i2 = null;
                }
                x bsg = new bsg(this, a2, i, mVar, creditCard.f(), i2, true, false, this.x.getEntry().c());
                a(true);
                a.a(bsg, new ProfileSaveCallback(this, RequestType.ADDRESS_AND_SIGNATURE));
                c.a(this, this.q, c.a(this.r, "store_profile::submit"), BuildConfig.VERSION_NAME);
                c.a((Context) this, this.q, PromotedEvent.BUYNOW_STORE_PROFILE_SUBMIT);
                return;
            }
            f().d(c);
            this.x.getEntry().j();
        }
    }

    private void a(m mVar) {
        this.v.setText(mVar.toString());
    }

    protected synchronized d f() {
        if (this.l == null) {
            CardEntryContainer entry = this.x.getEntry();
            this.l = super.f().a(Integer.valueOf(2131362149), entry.b).a(Integer.valueOf(2131362150), entry.b).a(Integer.valueOf(2131362153), entry.b).a(Integer.valueOf(2131362152), entry.b).a(Integer.valueOf(2131362155), entry.c).a(Integer.valueOf(2131362154), entry.c).a(Integer.valueOf(2131362147), entry.c).a(Integer.valueOf(2131362143), entry.c).a(Integer.valueOf(2131362142), entry.d).a(Integer.valueOf(2131362141), entry.d).a(Integer.valueOf(2131362148), entry.c).a(Integer.valueOf(2131362147), entry.c).a(Integer.valueOf(2131362156), entry.e).a(Integer.valueOf(2131362127), this.v).a(Integer.valueOf(2131362158), this.v);
        }
        return this.l;
    }

    public void c(Bundle bundle) {
        boolean z;
        if (bundle != null) {
            a aVar = (a) ab.a(bundle, "createaddr_bundle_address", a.a);
            String string = bundle.getString("createaddr_bundle_signature");
            String string2 = bundle.getString("createaddr_bundle_timestamp");
            if (!(aVar == null || string == null || string2 == null)) {
                az a = az.a((Context) this);
                Session a2 = this.p.a();
                f creditCard = this.x.getCreditCard();
                x btv = new btv((Context) this, a2, aVar, null, creditCard, string, string2, false, creditCard instanceof ac);
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

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i != 2) {
            return;
        }
        if (i2 != -1) {
            a(false);
        } else if (intent == null || a(intent.getExtras(), false) == null) {
            r();
        } else {
            finish();
        }
    }

    public void d(Bundle bundle) {
        boolean z = true;
        if (bundle != null) {
            String a = a(bundle, true);
            if (a != null) {
                z = false;
                Intent intent;
                if (this.t || this.s) {
                    intent = new Intent(this, ProfileEntryBillingActivity.class);
                    intent.putExtras(getIntent());
                    intent.putExtra("commerce_billing_same_as_shipping", s());
                    ab.a(intent, "commerce_address_object", i(), a.a);
                    intent.putExtra("commerce_profile_id_added", a);
                    Object creditCard = this.x.getCreditCard();
                    if (creditCard != null) {
                        ab.a(intent, "commerce_cc_info", creditCard, CreditCard.d);
                    }
                    startActivityForResult(intent, 2);
                } else {
                    intent = new Intent();
                    intent.putExtra("commerce_profile_id_added", a);
                    setResult(-1, intent);
                    finish();
                }
            }
        }
        if (z) {
            r();
        }
    }

    private void r() {
        c.a(this, this.q, c.a(this.r, "store_profile::failure"), BuildConfig.VERSION_NAME);
        c.a((Context) this, this.q, PromotedEvent.BUYNOW_STORE_PROFILE_FAILURE);
        Toast.makeText(this, getResources().getString(2131362179), 1).show();
        a(false);
    }

    private boolean s() {
        f creditCard = this.x.getCreditCard();
        CharSequence obj = this.k.getText().toString();
        if (aj.a(obj) || aj.a(creditCard.f())) {
            return false;
        }
        return obj.toLowerCase().equals(creditCard.f().toLowerCase());
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
        c.a(this, this.q, c.a(this.r, "store_profile::success"), BuildConfig.VERSION_NAME);
        c.a((Context) this, this.q, PromotedEvent.BUYNOW_STORE_PROFILE_SUCCESS);
        Intent intent = new Intent();
        intent.putExtra("commerce_profile_id_added", string);
        setResult(-1, intent);
        this.n = true;
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
            c.a(this, this.q, c.a(this.r, "store_profile::failure"), BuildConfig.VERSION_NAME);
            c.a((Context) this, this.q, PromotedEvent.BUYNOW_STORE_PROFILE_FAILURE);
        }
        f().a((Context) this, bundle);
        this.x.getEntry().j();
    }
}
