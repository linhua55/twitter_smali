package com.twitter.android.commerce.view;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import android.widget.Toast;
import com.twitter.android.commerce.network.e;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.d;
import com.twitter.android.commerce.util.g;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.commerce.model.a;
import com.twitter.library.commerce.model.i;
import com.twitter.library.commerce.model.j;
import com.twitter.model.core.Tweet;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public abstract class ProfileEntryBase extends TwitterFragmentActivity implements OnClickListener {
    protected ViewGroup a;
    protected EditText b;
    protected EditText c;
    protected EditText d;
    protected Spinner e;
    protected EditText f;
    protected Spinner g;
    protected TextView h;
    protected TextView i;
    protected EditText j;
    protected EditText k;
    protected d l;
    protected Button m;
    protected boolean n;
    protected UsageMode o;
    protected e p;
    protected Tweet q;
    protected boolean r;
    protected boolean s;
    protected boolean t;
    protected Bundle u;
    protected EditText v;
    protected LinearLayout w;
    private ArrayAdapter<String> x;
    private ArrayAdapter<i> y;
    private String[] z;

    /* compiled from: Twttr */
    public enum UsageMode {
        ADD,
        EDIT,
        ADD_PARTIAL
    }

    protected abstract void e();

    public t a(Bundle bundle, t tVar) {
        getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
        tVar.d(2130968679);
        tVar.b(14);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.a = (ViewGroup) findViewById(2131952093);
        this.o = UsageMode.ADD;
        this.w = (LinearLayout) findViewById(2131952091);
        this.b = (EditText) findViewById(2131952095);
        this.c = (EditText) findViewById(2131952097);
        this.d = (EditText) findViewById(2131952098);
        this.e = (Spinner) findViewById(2131952100);
        this.f = (EditText) findViewById(2131952101);
        this.g = (Spinner) findViewById(2131952103);
        this.h = (TextView) findViewById(2131952102);
        this.i = (TextView) findViewById(2131952099);
        this.j = (EditText) findViewById(2131952104);
        this.k = (EditText) findViewById(2131952105);
        this.v = (EditText) findViewById(2131952096);
        this.m = (Button) findViewById(2131952106);
        this.m.setOnClickListener(this);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Toast.makeText(this, getResources().getString(2131362179), 1).show();
            finish();
        }
        this.u = extras;
        if (!j.a()) {
            this.e.setVisibility(8);
        }
        this.q = (Tweet) this.u.getParcelable("commerce_buynow_tweet");
        this.r = this.u.getBoolean("commerce_launched_from_settings", false);
        this.s = this.u.getBoolean("commerce_phone_required", false);
        this.t = this.u.getBoolean("commerce_billing_required", false);
        l();
        c();
        a(false);
        this.p = new e(this, extras);
        e();
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

    protected a i() {
        a aVar = new a();
        aVar.i(this.b.getText().toString());
        aVar.h(BuildConfig.VERSION_NAME);
        aVar.a(this.c.getText().toString());
        aVar.b(this.d.getText().toString());
        aVar.d(this.f.getText().toString());
        int selectedItemPosition = this.e.getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            aVar.c(((i) this.y.getItem(selectedItemPosition)).a());
            if ("US".equals(aVar.d())) {
                selectedItemPosition = this.g.getSelectedItemPosition();
                if (selectedItemPosition > 0) {
                    aVar.e(this.z[selectedItemPosition - 1]);
                }
            } else {
                aVar.e(this.j.getText().toString());
            }
        }
        aVar.f(this.k.getText().toString());
        return aVar;
    }

    private void c() {
        this.x = new ArrayAdapter(this, 17367049, getResources().getStringArray(2131427343));
        this.g.setAdapter(this.x);
        this.z = getResources().getStringArray(2131427342);
        this.g.setOnItemSelectedListener(new ah(this));
    }

    private void l() {
        String string = getString(2131362239, new Object[]{getString(2131362266)});
        TextView textView = (TextView) findViewById(2131952107);
        SpannableString spannableString = new SpannableString(string);
        g.a(spannableString, string, r1, "https://twitter.com/privacy");
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableString, BufferType.SPANNABLE);
    }

    private void b(List<i> list) {
        Collections.sort(list);
        this.y = new ArrayAdapter(this, 17367049, list);
        this.e.setAdapter(this.y);
        this.e.setOnItemSelectedListener(new ai(this));
    }

    protected void a(boolean z) {
        int i = z ? 2131363531 : this.o == UsageMode.EDIT ? 2131362080 : 2131362081;
        this.m.setText(i);
        this.m.setEnabled(!z);
    }

    protected void a(List<String> list) {
        if (list != null) {
            if (list.size() == 0) {
                list.add("US");
            }
            b(j.a((Context) this).a((String[]) list.toArray(new String[0])));
            return;
        }
        List b = j.b();
        if (b.isEmpty()) {
            j();
        } else {
            b(j.a((Context) this).a((String[]) b.toArray(new String[0])));
        }
    }

    protected void j() {
        j a = j.a((Context) this);
        List c = a.c();
        for (String a2 : com.twitter.config.d.c("commerce_country_blacklist")) {
            int a3 = a.a(a2);
            if (a3 != -1) {
                c.remove(a3);
            }
        }
        b(c);
    }

    protected void a(a aVar) {
        this.b.setText(aVar.k());
        this.c.setText(aVar.b());
        this.d.setText(aVar.c());
        String b = com.twitter.util.object.e.b(aVar.d());
        int a = a(b);
        if (a >= 0) {
            this.e.setSelection(a);
        }
        if ("US".equals(b)) {
            b(aVar.f());
        } else {
            this.j.setText(aVar.f());
        }
        this.f.setText(aVar.e());
        this.k.setText(aVar.g());
    }

    protected int a(String str) {
        for (int i = 0; i < this.y.getCount(); i++) {
            if (((i) this.y.getItem(i)).a().equalsIgnoreCase(str)) {
                return i;
            }
        }
        return -1;
    }

    protected void b(String str) {
        String[] stringArray = getResources().getStringArray(2131427342);
        for (int i = 0; i < stringArray.length; i++) {
            if (stringArray[i].equals(str)) {
                this.g.setSelection(i + 1);
                return;
            }
        }
    }

    protected synchronized d f() {
        if (this.l == null) {
            this.l = new aj(this, this);
        }
        return this.l;
    }
}
