package com.twitter.android.addressbook;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.DrawableRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import bbu;
import buc;
import com.twitter.android.people.bb;
import com.twitter.android.settings.ContactsSyncSettingsActivity;
import com.twitter.android.xs;
import com.twitter.app.common.base.u;
import com.twitter.app.users.q;
import com.twitter.library.client.bg;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.ui.widget.PromptView;
import com.twitter.ui.widget.r;
import com.twitter.util.o;
import defpackage.bdc;

/* compiled from: Twttr */
public class a extends xs implements OnClickListener, r {
    private final bb a;
    private final View b;
    private final TextView i;
    private final View j;
    private final PromptView k;
    private final int l;
    private final long m;
    private final String n;
    private c o;
    private boolean p;
    private boolean q;
    private final Handler r;

    public a(Context context, @DrawableRes int i, e<UserView> eVar, FriendshipCache friendshipCache, int i2, long j) {
        super(context, i, eVar, friendshipCache, false);
        this.r = new Handler(Looper.getMainLooper());
        this.l = i2;
        this.m = j;
        this.n = bg.a().c().e();
        this.a = bb.a(this.m);
        LayoutInflater from = LayoutInflater.from(context);
        this.b = from.inflate(2130968887, null, false);
        ((TextView) this.b.findViewById(2131952540)).setText(2131363453);
        this.j = from.inflate(2130968619, null, false);
        this.j.setOnClickListener(this);
        this.i = (TextView) this.b.findViewById(2131952541);
        this.i.setText(bdc.read_more_button);
        this.i.setOnClickListener(this);
        b();
        this.k = (PromptView) from.inflate(2130968622, null, false).findViewById(2131951936);
        this.k.setOnPromptClickListener(this);
    }

    public int getViewTypeCount() {
        return super.getViewTypeCount() + 3;
    }

    public int getItemViewType(int i) {
        if (c(i)) {
            return super.getViewTypeCount() + 0;
        }
        if (d(i)) {
            return super.getViewTypeCount() + 1;
        }
        if (b(i)) {
            return super.getViewTypeCount() + 2;
        }
        return super.getItemViewType(a(i));
    }

    public int getCount() {
        int count = super.getCount();
        if (count == 0) {
            return o.a(new boolean[]{this.p, this.q});
        }
        if (count > this.l) {
            count = this.l;
        }
        return count + f();
    }

    private int f() {
        return o.a(new boolean[]{this.p, this.q, true});
    }

    private boolean b(int i) {
        return i == f() + -1;
    }

    private boolean c(int i) {
        return this.p && i == 0;
    }

    private boolean d(int i) {
        if (this.q) {
            if (i == (this.p)) {
                return true;
            }
        }
        return false;
    }

    public int a(int i) {
        return i - f();
    }

    public boolean isEnabled(int i) {
        if (c(i) || d(i) || b(i)) {
            return false;
        }
        return super.isEnabled(a(i));
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (c(i)) {
            return this.j;
        }
        if (d(i)) {
            return this.k;
        }
        if (!b(i)) {
            return super.getView(a(i), view, viewGroup);
        }
        g();
        return this.b;
    }

    private void g() {
        if (super.getCount() > getCount() - f()) {
            this.i.setVisibility(0);
        } else {
            this.i.setVisibility(8);
        }
    }

    public void onClick(View view) {
        if (view.getId() == 2131952541) {
            bbu.a(this.a.a("active_contacts", "more", "click"));
            k();
        } else if (view.getId() == 2131951933) {
            bbu.a(this.a.a(TtmlNode.ANONYMOUS_REGION_ID, "settings_button", "click"));
            l();
        }
    }

    private void k() {
        Intent a = new q().a(41).a(true).b(false).a(this.m).a(i());
        u.a(a, true);
        i().startActivity(a);
    }

    private void l() {
        Context i = i();
        i.startActivity(new Intent(i, ContactsSyncSettingsActivity.class).putExtra("ContactsSyncSettingsActivity_account_name", this.n).putExtra("ContactsSyncSettingsActivity_account_id", this.m));
    }

    public void b() {
        this.p = buc.d(i(), this.n);
        notifyDataSetChanged();
    }

    public void a(boolean z) {
        this.q = z;
        if (!this.k.getPromptButton().isEnabled() && d()) {
            this.r.postDelayed(new b(this), 1000);
        }
        notifyDataSetChanged();
    }

    public boolean d() {
        return this.q;
    }

    public void a(PromptView promptView) {
        this.k.getPromptButton().setEnabled(false);
        this.o.b();
    }

    public void b(PromptView promptView) {
    }

    public void a(c cVar) {
        this.o = cVar;
    }
}
