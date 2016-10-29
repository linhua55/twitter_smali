package com.twitter.android.commerce.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.commerce.network.ProfileSaveCallback;
import com.twitter.android.commerce.network.ProfileSaveCallback.RequestType;
import com.twitter.android.commerce.network.d;
import com.twitter.android.commerce.network.j;
import com.twitter.android.commerce.util.c;
import com.twitter.app.common.base.t;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.az;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.a;
import com.twitter.library.commerce.model.af;
import com.twitter.library.commerce.model.f;
import com.twitter.library.service.x;
import com.twitter.util.ab;
import defpackage.bsp;
import defpackage.bss;
import defpackage.btv;
import java.util.List;

/* compiled from: Twttr */
public class ProfileEntryBillingActivity extends ProfileEntryBase implements d, j {
    private String A;
    private CreditCard B;
    private EditText x;
    private CheckBox y;
    private a z;

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        j();
        this.v.setVisibility(8);
        c();
        View.inflate(this, 2130968698, this.w);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131952094);
        View.inflate(this, 2130968682, viewGroup);
        viewGroup.setVisibility(8);
        this.x = (EditText) findViewById(2131952177);
        this.y = (CheckBox) findViewById(2131952108);
        this.y.setOnCheckedChangeListener(new ak(this));
        this.B = (CreditCard) ab.a(this.u, "commerce_cc_info", CreditCard.d);
        if (this.B == null) {
            finish();
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById(2131952176);
        c.a((Context) this, viewGroup2, null, 2131362246, false);
        TextView textView = (TextView) viewGroup2.findViewById(2131952117);
        textView.setText(2131362245);
        textView.setVisibility(0);
        viewGroup2 = (ViewGroup) findViewById(2131952092);
        String b = this.B.b();
        c.a((Context) this, viewGroup2, null, String.format(getString(2131362066), new Object[]{b}), false);
        if (this.u.getBoolean("commerce_billing_same_as_shipping")) {
            this.z = (a) ab.a(this.u, "commerce_address_object", a.a);
            if (this.z != null) {
                viewGroup.setVisibility(0);
                this.y.setChecked(true);
            }
        } else {
            CharSequence f;
            viewGroup.setVisibility(8);
            if (this.B instanceof f) {
                f = ((f) this.B).f();
            } else {
                f = this.B.l().g();
            }
            this.k.setText(f);
        }
        this.A = this.u.getString("commerce_profile_id_added");
    }

    private void c() {
        this.k.setEnabled(false);
        this.k.setFocusable(false);
    }

    private void a(boolean z, ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                a(z, (ViewGroup) childAt);
            } else if (childAt instanceof EditText) {
                childAt.setFocusable(z);
                childAt.setFocusableInTouchMode(z);
            }
            childAt.setEnabled(z);
            if (childAt instanceof Spinner) {
                childAt.setClickable(z);
            }
        }
    }

    protected void e() {
        c.a((Context) this, (ViewGroup) findViewById(2131952092), Integer.valueOf(2130839118), 2131362277, true, false);
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
            af afVar = new af();
            afVar.a(this.x.getText().toString());
            List a = i().a();
            a.addAll(afVar.e());
            if (a.size() == 0) {
                a(afVar);
            } else {
                f().d(a);
            }
        }
    }

    private void a(af afVar) {
        az a = az.a((Context) this);
        x bsp = new bsp(this, this.p.a(), afVar);
        a(true);
        a.a(bsp, new com.twitter.android.commerce.network.c(this));
    }

    private void b(a aVar) {
        az a = az.a((Context) this);
        x bss = new bss(this, this.p.a(), false, true, this.A, aVar);
        a(true);
        a.a(bss, new ProfileSaveCallback(this, RequestType.ADDRESS_AND_SIGNATURE));
    }

    protected synchronized com.twitter.android.commerce.util.d f() {
        if (this.l == null) {
            this.l = super.f().a(Integer.valueOf(2131362128), this.x);
            this.l = super.f().a(Integer.valueOf(2131362161), this.x);
        }
        return this.l;
    }

    public void c(Bundle bundle) {
        boolean z;
        if (bundle != null) {
            String string = bundle.getString("createaddr_bundle_signature");
            String string2 = bundle.getString("createaddr_bundle_timestamp");
            a i = i();
            if (!(string == null || string2 == null || i == null)) {
                az a = az.a((Context) this);
                x btv = new btv((Context) this, this.p.a(), null, i, this.A, string, string2, false, true);
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
        boolean z;
        if (bundle != null) {
            String string = bundle.getString("storeprofile_bundle_profileid");
            if (string != null) {
                c.a(this, this.q, c.a(this.r, "store_profile::success"), BuildConfig.VERSION_NAME);
                c.a((Context) this, this.q, PromotedEvent.BUYNOW_STORE_PROFILE_SUCCESS);
                Intent intent = new Intent();
                intent.putExtra("commerce_profile_id_added", string);
                setResult(-1, intent);
                this.n = true;
                finish();
                z = false;
                if (z) {
                    c.a(this, this.q, c.a(this.r, "store_profile::failure"), BuildConfig.VERSION_NAME);
                    c.a((Context) this, this.q, PromotedEvent.BUYNOW_STORE_PROFILE_FAILURE);
                    Toast.makeText(this, getResources().getString(2131362179), 1).show();
                    a(false);
                }
            }
        }
        z = true;
        if (z) {
            c.a(this, this.q, c.a(this.r, "store_profile::failure"), BuildConfig.VERSION_NAME);
            c.a((Context) this, this.q, PromotedEvent.BUYNOW_STORE_PROFILE_FAILURE);
            Toast.makeText(this, getResources().getString(2131362179), 1).show();
            a(false);
        }
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
    }

    public void a() {
        b(i());
    }

    public void a(Bundle bundle) {
        f().a((Context) this, bundle);
    }
}
