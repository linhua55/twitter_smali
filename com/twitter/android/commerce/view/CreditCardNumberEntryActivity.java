package com.twitter.android.commerce.view;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.commerce.network.ProfileSaveCallback;
import com.twitter.android.commerce.network.ProfileSaveCallback.RequestType;
import com.twitter.android.commerce.network.e;
import com.twitter.android.commerce.network.j;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.d;
import com.twitter.android.commerce.util.g;
import com.twitter.android.commerce.widget.creditcard.CardEntryContainer;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.library.commerce.model.ac;
import com.twitter.library.commerce.model.f;
import com.twitter.library.service.x;
import com.twitter.util.aj;
import defpackage.bsg;
import defpackage.btv;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class CreditCardNumberEntryActivity extends TwitterFragmentActivity implements OnClickListener, j {
    private CardEntryContainer a;
    private d b;
    private Button c;
    private e d;
    private List<Type> e;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968681);
        tVar.b(14);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        ImageView imageView = (ImageView) findViewById(2131952145);
        ImageView imageView2 = (ImageView) findViewById(2131952146);
        this.a = (CardEntryContainer) findViewById(2131952147);
        this.a.a(imageView, imageView2);
        this.a.setPanOnly(true);
        this.a.setDismissKeyboardOnComplete(true);
        c.a((Context) this, (ViewGroup) findViewById(2131952086), Integer.valueOf(2130839117), 2131362094, false);
        this.c = (Button) findViewById(2131952106);
        this.c.setOnClickListener(this);
        g.a((Context) this, 2131362057, (TextView) findViewById(2131952107));
        Bundle extras = getIntent().getExtras();
        this.d = new e(this, extras);
        if (extras.containsKey("commerce_valid_card_types")) {
            this.e = (List) extras.getSerializable("commerce_valid_card_types");
            this.a.setSupportedCardTypes(this.e);
        }
        a(false);
    }

    protected void onStop() {
        super.onStop();
    }

    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                Dialog progressDialog = new ProgressDialog(this);
                progressDialog.setProgressStyle(0);
                progressDialog.setMessage(getText(2131363531));
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(false);
                return progressDialog;
            default:
                return super.onCreateDialog(i);
        }
    }

    public void onClick(View view) {
        if (view.getId() == this.c.getId()) {
            CreditCard creditCard = this.a.getCreditCard();
            boolean a = aj.a(this.a.getCardNumber());
            boolean z = !CreditCard.a(creditCard, this.e);
            if (a || z) {
                List arrayList = new ArrayList();
                if (a) {
                    arrayList.add(Integer.valueOf(2131362149));
                } else if (creditCard.a() == Type.INVALID || z) {
                    arrayList.add(Integer.valueOf(2131362153));
                }
                c().d(arrayList);
                this.a.j();
                return;
            }
            showDialog(1);
            az a2 = az.a((Context) this);
            x bsg = new bsg(this, this.d.a(), null, null, null, null, true, true, false);
            a(true);
            a2.a(bsg, new ProfileSaveCallback(this, RequestType.ADDRESS_AND_SIGNATURE));
        }
    }

    private void a(boolean z) {
        int i;
        if (z) {
            i = 2131363531;
        } else {
            i = 2131362081;
        }
        this.c.setText(i);
        this.c.setEnabled(!z);
    }

    private synchronized d c() {
        if (this.b == null) {
            this.b = new d(this, this, this.a);
        }
        return this.b;
    }

    public void c(Bundle bundle) {
        boolean z;
        if (bundle != null) {
            String string = bundle.getString("createaddr_bundle_signature");
            String string2 = bundle.getString("createaddr_bundle_timestamp");
            if (!(string == null || string2 == null)) {
                az a = az.a((Context) this);
                Session a2 = this.d.a();
                f creditCard = this.a.getCreditCard();
                x btv = new btv((Context) this, a2, null, null, creditCard, string, string2, true, creditCard instanceof ac);
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
        removeDialog(1);
        if (bundle != null) {
            String string = bundle.getString("storeprofile_bundle_profileid");
            if (string != null) {
                Intent intent = new Intent();
                intent.putExtra("commerce_profile_id_added", string);
                intent.putExtra("commerce_profile_last_four", this.a.getCreditCard().b());
                intent.putExtra("commerce_profile_cctype", this.a.getCreditCard().a());
                setResult(-1, intent);
                finish();
                z = false;
                if (z) {
                    Toast.makeText(this, getResources().getString(2131362179), 1).show();
                    a(false);
                }
            }
        }
        z = true;
        if (z) {
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
        removeDialog(1);
        c().a((Context) this, bundle);
    }
}
