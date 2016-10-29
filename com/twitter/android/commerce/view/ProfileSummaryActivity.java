package com.twitter.android.commerce.view;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.twitter.android.commerce.network.e;
import com.twitter.android.commerce.network.f;
import com.twitter.android.commerce.network.g;
import com.twitter.android.commerce.network.h;
import com.twitter.android.commerce.network.i;
import com.twitter.android.commerce.util.ImageHelper;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.d;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.az;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.a;
import com.twitter.library.commerce.model.am;
import com.twitter.model.core.Tweet;
import com.twitter.util.ab;
import com.twitter.util.aj;
import defpackage.bca;
import defpackage.bsu;
import defpackage.bto;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ProfileSummaryActivity extends TwitterFragmentActivity implements OnClickListener, g, i, m {
    private ProgressBar A;
    private bca B;
    private bca C;
    private bca D;
    private bca E;
    private am a;
    private boolean b;
    private Tweet c;
    private String d;
    private e e;
    private boolean f;
    private String g;
    private List<String> h;
    private boolean i;
    private boolean j;
    private d k;
    private ViewGroup l;
    private ViewGroup m;
    private ViewGroup n;
    private ViewGroup o;
    private ViewGroup p;
    private ViewGroup q;
    private ImageView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private ViewGroup v;
    private TextView w;
    private TextView x;
    private ViewGroup y;
    private ViewGroup z;

    public t a(Bundle bundle, t tVar) {
        int i;
        this.b = false;
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f = extras.getBoolean("commerce_launched_from_settings", false);
            if (this.f) {
                tVar.b(false);
                i = 2130968702;
            } else {
                i = 2130968701;
            }
            this.h = (List) extras.getSerializable("commerce_allowed_states_for_item");
            this.b = extras.getBoolean("commerce_in_buy_mode", false);
            this.i = extras.getBoolean("commerce_phone_required");
            this.j = extras.getBoolean("commerce_billing_required");
        } else {
            i = 2130968701;
        }
        tVar.d(i);
        tVar.b(14);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.l = (ViewGroup) findViewById(2131952182);
        this.m = (ViewGroup) findViewById(2131952193);
        this.n = (ViewGroup) findViewById(2131952192);
        this.s = (TextView) findViewById(2131952184);
        this.r = (ImageView) findViewById(2131952183);
        this.t = (TextView) findViewById(2131952165);
        this.u = (TextView) findViewById(2131952096);
        this.v = (ViewGroup) findViewById(2131952181);
        this.w = (TextView) findViewById(2131952174);
        this.x = (TextView) findViewById(2131952175);
        this.y = (ViewGroup) findViewById(2131952188);
        this.z = (ViewGroup) findViewById(2131952189);
        this.o = (ViewGroup) findViewById(2131952190);
        this.A = (ProgressBar) findViewById(2131952149);
        this.k = new d(this);
        this.p = (ViewGroup) findViewById(2131952086);
        int i = 2131362096;
        if (c.d()) {
            i = 2131362244;
        }
        c.a((Context) this, this.p, Integer.valueOf(2130839117), i, false);
        this.q = (ViewGroup) findViewById(2131952185);
        c.a((Context) this, this.q, Integer.valueOf(2130839118), 2131362277, true);
        c.a((Context) this, (ViewGroup) findViewById(2131952191), null, 2131362234, true);
        if (!c.d()) {
            this.o.setVisibility(8);
        }
        this.w.setText(null);
        this.x.setText(null);
        this.z.setOnClickListener(this);
        this.y.setOnClickListener(this);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.c = (Tweet) extras.getParcelable("commerce_buynow_tweet");
            this.d = extras.getString("commerce_buynow_card_url");
            this.a = (am) ab.a(extras, "commerce_profile_entry", am.a);
        }
        this.e = new e(this, extras);
        if (!c.b()) {
            this.u.setVisibility(8);
        }
    }

    public boolean a(w wVar) {
        if (!super.a(wVar)) {
            return false;
        }
        wVar.a(2132017158);
        ToolBar j = wVar.j();
        this.B = j.a(2131953419);
        this.C = j.a(2131953420);
        this.D = j.a(2131953421);
        this.E = j.a(2131953422);
        if (m()) {
            i();
        } else {
            a(false);
            r();
            e();
        }
        return true;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if ((i == 1 || i == 2) && intent != null) {
            Bundle extras = intent.getExtras();
            if (extras != null && extras.getString("commerce_profile_id_added") != null) {
                setResult(-1, intent);
                if (this.b) {
                    finish();
                    return;
                }
                a(false);
                e();
            }
        }
    }

    private void a(a aVar) {
        a aVar2 = aVar;
        c.a(this, this.c, this.d, aVar2, c.c(this.a), this.e.a().e(), c(), this.h, 1, this.f, this.i, this.j);
    }

    private CreditCard c() {
        if (this.a != null) {
            return this.a.b();
        }
        return null;
    }

    private void e() {
        az.a((Context) this).a(new bto(this, this.e.a()), new h(this, false));
    }

    private void f() {
        az.a((Context) this).a(new bsu(this, this.e.a()), new f(this));
    }

    private void a(boolean z) {
        int i;
        int i2 = 0;
        this.B.b(false);
        this.C.b(false);
        this.D.b(false);
        this.E.b(false);
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        if (z) {
            i2 = 8;
        }
        this.l.setVisibility(i);
        this.v.setVisibility(i2);
    }

    public void a(boolean z, am amVar) {
        this.a = amVar;
        i();
    }

    private void i() {
        CreditCard a = c.a(this.a);
        if (a == null) {
            a = c.b(this.a);
        }
        a a2 = c.a(a, this.a);
        com.twitter.library.commerce.model.m c = c.c(this.a);
        if (a != null) {
            this.s.setText(com.twitter.android.commerce.util.a.a(a, (Context) this));
            this.r.setImageResource(ImageHelper.a(a.a()).a());
            if (a2 != null) {
                this.t.setText(a2.toString());
            }
            if (c.b() && c != null) {
                this.u.setText(c.a());
            }
            a(true);
        } else {
            a(getString(2131362171), getString(2131362172));
            a(false);
        }
        j();
        r();
    }

    private void j() {
        int i = 8;
        if (c.d()) {
            int i2;
            this.m.removeAllViews();
            boolean l = l();
            if (l) {
                b a = b.a(this, this.a, null);
                for (i2 = 0; i2 < a.getCount(); i2++) {
                    this.m.addView(a.getView(i2, null, null));
                }
            }
            View findViewById = findViewById(2131952186);
            if (findViewById != null) {
                LayoutParams layoutParams = (LayoutParams) findViewById.getLayoutParams();
                layoutParams.topMargin = 0;
                findViewById.setLayoutParams(layoutParams);
                findViewById.requestLayout();
            }
            ImageView imageView = (ImageView) this.p.findViewById(2131952118);
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            imageView = (ImageView) findViewById(2131952187);
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            this.q.setVisibility(8);
            this.y.setVisibility(8);
            ViewGroup viewGroup = this.m;
            if (l) {
                i2 = 0;
            } else {
                i2 = 8;
            }
            viewGroup.setVisibility(i2);
            ViewGroup viewGroup2 = this.n;
            if (!l) {
                i = 0;
            }
            viewGroup2.setVisibility(i);
        }
    }

    private boolean l() {
        if (this.a == null || this.a.g().length <= 0) {
            return false;
        }
        return true;
    }

    private boolean m() {
        CreditCard a = c.a(this.a);
        return (a == null || c.a(a, this.a) == null) ? false : true;
    }

    private void b(String str) {
        a(str, null);
    }

    private void a(String str, String str2) {
        this.w.setText(str);
        this.x.setText(str2);
        if (aj.b((CharSequence) str)) {
            this.A.setVisibility(8);
        } else {
            this.A.setVisibility(0);
        }
    }

    private void r() {
        boolean z;
        boolean z2 = false;
        boolean z3 = !m();
        this.B.b(z3);
        bca bca = this.C;
        if (this.b || !c.d()) {
            z = false;
        } else {
            z = true;
        }
        bca.b(z);
        bca = this.D;
        if (z3) {
            z = false;
        } else {
            z = true;
        }
        bca.b(z);
        bca bca2 = this.E;
        if (!z3 || l()) {
            z2 = true;
        }
        bca2.b(z2);
    }

    public void b(Bundle bundle) {
        c(bundle);
        b(getString(2131362173));
    }

    private void c(Bundle bundle) {
        this.k.a((Context) this, bundle);
    }

    public void a() {
        c.a(this, this.c, c.a(this.f, "::profile_deletion_success"), this.d);
        a(getString(2131362171), getString(2131362172));
        this.a = null;
        j();
        a(false);
        r();
        Intent intent = new Intent();
        intent.putExtra("commerce_profiles_deleted", true);
        setResult(-1, intent);
    }

    public void a(Bundle bundle) {
        c.a(this, this.c, c.a(this.f, "::profile_deletion_failure"), this.d);
        c(bundle);
        a(false);
        e();
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    b(getString(2131362113));
                    a(false);
                    if (this.g != null) {
                        c.a(this, this.c, this.g, this.d);
                    }
                    this.g = null;
                    f();
                }
            default:
        }
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == 2131953421) {
            c.a(this, this.c, c.a(this.f, ":edit_menu_item:click"), this.d);
            t();
        } else if (a == 2131953420) {
            u();
        } else if (a == 2131953422) {
            this.g = c.a(this.f, ":delete_menu_item:click");
            s();
        } else if (a == 2131953419) {
            c.a(this, this.c, "settings:payment_settings::add_menu_item:click", this.d);
            a(null);
        }
        return super.a(acVar);
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == this.y.getId()) {
            c.a(this, this.c, c.a(this.f, ":edit_cta:click"), this.d);
            t();
        } else if (id == this.z.getId()) {
            this.g = c.a(this.f, ":delete_cta:click");
            s();
        }
    }

    private void s() {
        ((ec) ((ec) ((ec) ((ec) new ec(1).b(2131362110)).a(2131362111)).d(2131362398)).f(2131362041)).i().a((m) this).a(getSupportFragmentManager());
    }

    private void t() {
        a(c.a(c.a(this.a), this.a));
    }

    private void u() {
        Intent intent = new Intent(this, CreditCardNumberEntryActivity.class);
        Bundle bundle = new Bundle();
        bundle.putBoolean("commerce_launched_from_settings", this.f);
        bundle.putParcelable("commerce_buynow_tweet", this.c);
        intent.putExtras(bundle);
        startActivityForResult(intent, 2);
    }
}
