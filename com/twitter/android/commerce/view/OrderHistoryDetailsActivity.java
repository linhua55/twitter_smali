package com.twitter.android.commerce.view;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.twitter.android.commerce.network.e;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.d;
import com.twitter.android.commerce.util.g;
import com.twitter.android.commerce.widget.form.OrderHistoryItemAttribute;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.az;
import com.twitter.library.commerce.model.TaxType;
import com.twitter.library.commerce.model.r;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.ab;
import com.twitter.util.aj;
import defpackage.btf;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class OrderHistoryDetailsActivity extends TwitterFragmentActivity {
    private ViewGroup a;
    private ViewGroup b;
    private e c;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968693);
        tVar.b(14);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        setTitle(getString(2131362198));
        Bundle extras = getIntent().getExtras();
        this.a = (ViewGroup) findViewById(2131952148);
        this.b = (ViewGroup) findViewById(2131952150);
        if (extras == null) {
            finish();
        }
        this.c = new e(this, extras);
        r rVar = (r) ab.a(extras, "commerce_order_history_item", r.a);
        if (rVar != null) {
            b(rVar);
            return;
        }
        String string = extras.getString("commerce_order_history_item_id");
        if (string != null) {
            this.a.setVisibility(0);
            this.b.setVisibility(8);
            b(string);
        }
    }

    private void b(String str) {
        az.a((Context) this).a(new btf(this, this.c.a(), str), new u(this, this));
    }

    private void b(r rVar) {
        CharSequence string;
        TextView textView = (TextView) findViewById(2131952153);
        CharSequence b = rVar.b();
        if (rVar.m() != null) {
            textView.setOnClickListener(new s(this, rVar));
        } else {
            textView.setTextColor(getResources().getColor(2131886089));
        }
        textView.setText(b);
        ((TextView) findViewById(2131952155)).setText(c.a(rVar.r()));
        StringBuilder stringBuilder = new StringBuilder();
        String str = " \u2022 ";
        boolean z = true;
        for (Entry entry : rVar.h().entrySet()) {
            if (!z) {
                stringBuilder.append(" \u2022 ");
            }
            stringBuilder.append((String) entry.getValue());
            z = false;
        }
        ((TextView) findViewById(2131952154)).setText(stringBuilder.toString());
        MediaImageView mediaImageView = (MediaImageView) findViewById(2131952152);
        mediaImageView.a(a.a(rVar.c()));
        mediaImageView.setOnClickListener(new t(this));
        c.a((Context) this, (ViewGroup) findViewById(2131952151), null, 2131362183, false);
        c.a((Context) this, (ViewGroup) findViewById(2131952160), null, getString(2131362188, new Object[]{rVar.a(getResources()), c.a(rVar.d())}), true);
        c.a((Context) this, (ViewGroup) findViewById(2131952166), null, getString(2131362196), true);
        textView = (TextView) findViewById(2131952164);
        TextView textView2 = (TextView) findViewById(2131952165);
        com.twitter.library.commerce.model.a t = rVar.t();
        if (t != null) {
            textView.setText(getString(2131362277));
            textView2.setText(t.toString());
        } else {
            textView.setVisibility(8);
            textView2.setVisibility(8);
        }
        a(2131952156, 2131362189, c.a(rVar.r()), false, null, null);
        a(2131952157, 2131362187, c.a(rVar.v()), false, null, null);
        if (TaxType.a(rVar.w()).equals(TaxType.INCLUDED_IN_PRICE)) {
            string = getString(2131362129);
        } else {
            string = c.a(rVar.s());
        }
        a(2131952158, 2131362190, string, true, null, null);
        a(2131952159, 2131362191, c.a(rVar.i()), false, null, null);
        if (rVar.j() != null) {
            string = rVar.j().toString();
        } else {
            string = null;
        }
        a(2131952161, 2131362182, string, true, null, null);
        a(2131952162, 2131362186, rVar.a(), true, null, null);
        a(2131952163, 2131362184, com.twitter.android.commerce.util.a.a(rVar.u(), (Context) this), true, null, null);
        str = rVar.f();
        if (aj.b((CharSequence) str)) {
            string = new SpannableString(str);
            g.a((SpannableString) string, str, str, "mailto:" + str);
        } else {
            string = null;
        }
        a(2131952167, 2131362181, string, true, Integer.valueOf(getResources().getColor(2131886264)), null);
        str = rVar.k();
        if (aj.b((CharSequence) str)) {
            string = new SpannableString(str);
            g.a((SpannableString) string, str, str, str);
        } else {
            string = null;
        }
        a(2131952168, 2131362192, string, true, Integer.valueOf(getResources().getColor(2131886264)), null);
        a(2131952169, 2131362185, rVar.l(), true, null, null);
    }

    private void a(int i, int i2, CharSequence charSequence, boolean z, Integer num, OnClickListener onClickListener) {
        a(i, getString(i2), charSequence, z, num, onClickListener);
    }

    private void a(int i, String str, CharSequence charSequence, boolean z, Integer num, OnClickListener onClickListener) {
        OrderHistoryItemAttribute orderHistoryItemAttribute = (OrderHistoryItemAttribute) findViewById(i);
        if (charSequence != null) {
            orderHistoryItemAttribute.b.setText(str);
            orderHistoryItemAttribute.c.setText(charSequence);
            if (!z) {
                orderHistoryItemAttribute.a.setVisibility(8);
            }
            if (num != null) {
                orderHistoryItemAttribute.c.setTextColor(num.intValue());
            }
            if (charSequence instanceof SpannableString) {
                orderHistoryItemAttribute.c.setMovementMethod(LinkMovementMethod.getInstance());
                orderHistoryItemAttribute.c.setText(charSequence, BufferType.SPANNABLE);
            }
            orderHistoryItemAttribute.setOnClickListener(onClickListener);
            return;
        }
        orderHistoryItemAttribute.setVisibility(8);
    }

    public void a(r rVar) {
        this.a.setVisibility(8);
        this.b.setVisibility(0);
        b(rVar);
    }

    public void a(Bundle bundle) {
        new d(this).a((Context) this, bundle);
        finish();
    }
}
