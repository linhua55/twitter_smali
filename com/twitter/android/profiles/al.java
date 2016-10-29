package com.twitter.android.profiles;

import android.content.BroadcastReceiver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;
import bou;
import bpf;
import cdk;
import com.twitter.android.ProfileActivity;
import com.twitter.android.bu;
import com.twitter.android.client.c;
import com.twitter.android.io;
import com.twitter.android.kr;
import com.twitter.android.mt;
import com.twitter.android.mx;
import com.twitter.android.my;
import com.twitter.android.xp;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.widget.BaseUserView;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.core.p;
import defpackage.bbu;
import defpackage.boh;
import defpackage.bok;
import defpackage.cni;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class al implements LoaderCallbacks<Cursor>, kr<BaseUserView, cni>, aj, bb, e<UserView> {
    protected final Session a;
    protected final ao b;
    protected final Context c;
    protected final TwitterScribeAssociation d;
    protected mt e;
    private final c f;
    private final bg g;
    private final FragmentActivity h;
    private final LoaderManager i;
    private final az j;
    private final Set<Long> k;
    private final Set<String> l;
    private final List<TwitterScribeItem> m;
    private int n;
    private final long o;
    private ak p;
    private BroadcastReceiver q;

    protected abstract Uri c();

    protected abstract int d();

    protected abstract int e();

    protected abstract int f();

    protected abstract int g();

    protected abstract void i();

    protected abstract String j();

    protected abstract void l();

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    protected al(FragmentActivity fragmentActivity, bg bgVar, ao aoVar, TwitterScribeAssociation twitterScribeAssociation) {
        this.k = new HashSet();
        this.l = new HashSet();
        this.m = new ArrayList();
        this.n = 0;
        this.c = fragmentActivity;
        this.h = fragmentActivity;
        this.i = fragmentActivity.getSupportLoaderManager();
        this.j = az.a(this.c);
        this.g = bgVar;
        this.a = this.g.c();
        this.o = this.a.g();
        this.b = aoVar;
        this.d = twitterScribeAssociation;
        this.f = c.a(this.c);
        a();
    }

    private void a() {
        this.q = new am(this);
        LocalBroadcastManager.getInstance(this.c).registerReceiver(this.q, new IntentFilter("USER_FOLLOWED"));
    }

    private void s() {
        LocalBroadcastManager.getInstance(this.c).unregisterReceiver(this.q);
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        int d = d();
        if (this.e.c(i)) {
            Intent intent = (Intent) this.e.getItem(i);
            if (intent != null) {
                this.c.startActivity(intent);
            }
        } else if (!this.e.b(i)) {
            Intent putExtra = new Intent(this.c, ProfileActivity.class).putExtra("user_id", j).putExtra("type", d);
            Serializable j2 = this.b.c().j(j);
            if (j2 != null) {
                putExtra.putExtra("friendship", j2);
            }
            UserView a = ((my) this.e.c()).a(view);
            cni promotedContent = a.getPromotedContent();
            if (promotedContent != null) {
                this.f.a(PromotedEvent.SCREEN_NAME_CLICK, promotedContent);
                putExtra.putExtra("pc", cni.a(promotedContent));
            }
            String a2 = as.a(this.b.b());
            if (d == 10) {
                putExtra.putExtra("association", ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.o)).b(a2)).c(j()));
            }
            as.a(this.a, as.a(a2, j() + "::user:profile_click"), this.o, this.b, promotedContent, ((xp) a.getTag()).g, this.d);
            this.h.startActivityForResult(putExtra, 2);
        }
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        if (i != g()) {
            return null;
        }
        String str;
        String[] strArr;
        Builder appendQueryParameter = ContentUris.withAppendedId(c(), this.b.a().bf_()).buildUpon().appendQueryParameter("limit", Integer.toString(e())).appendQueryParameter("ownerId", String.valueOf(this.o));
        if (this.b.c().a()) {
            str = "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?";
            strArr = new String[]{Long.toString(this.b.a().bf_())};
        } else {
            strArr = null;
            str = null;
        }
        return new bu(this.c, appendQueryParameter.build(), cdk.b, str, strArr, null).a(false);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (loader.getId() == g()) {
            if (cursor != null && cursor.getCount() > 0) {
                this.e.a(cursor);
                h();
            }
            l();
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        Session a = this.g.a(xVar);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (xVar.U()) {
                    this.n = 2;
                    r();
                    return;
                }
                this.n = 0;
                l();
            case WireMessage.WIRE_CONTROL /*2*/:
                if (a != null) {
                    xVar = (boh) xVar;
                    if (xVar.v() == d()) {
                        long t = xVar.t();
                        if (xVar.U()) {
                            LocalBroadcastManager.getInstance(this.c).sendBroadcast(new Intent("USER_FOLLOWED").putExtra("USER_FOLLOWED_USERID_KEY", t));
                        } else if (a(xVar)) {
                            this.b.c().c(t);
                            this.e.notifyDataSetChanged();
                        }
                        i();
                    }
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (a != null) {
                    x xVar2 = (bok) xVar;
                    if (xVar2.h() == d()) {
                        long g = xVar2.g();
                        if (!xVar.U() && a(xVar2)) {
                            this.b.c().b(g);
                            this.e.notifyDataSetChanged();
                            Toast.makeText(this.c, 2131364092, 1).show();
                        }
                        i();
                    }
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (a != null) {
                    bpf bpf = (bpf) xVar;
                    int i2 = (bpf.g() == null || !bpf.h()) ? 0 : 1;
                    if (a(xVar) && this.e != null) {
                        my myVar = (my) this.e.c();
                        if (i2 != 0) {
                            Cursor e = myVar.e();
                            if (e != null) {
                                e.requery();
                                myVar.notifyDataSetChanged();
                                String a2 = as.a(as.a(this.b.b()), j() + "::user:replenish");
                                bbu.a(new TwitterScribeLog(this.o).b(a2));
                            }
                        }
                    }
                    i();
                }
            default:
        }
    }

    public void a(BaseUserView baseUserView, cni cni, Bundle bundle) {
        long userId = baseUserView.getUserId();
        if (this.k.add(Long.valueOf(userId))) {
            TwitterScribeItem a = TwitterScribeItem.a(userId, cni, ((xp) baseUserView.getTag()).g, null);
            a.g = bundle.getInt("position") + 1;
            this.m.add(a);
        }
        if (cni != null && this.l.add(cni.c)) {
            this.f.a(PromotedEvent.IMPRESSION, cni);
        }
    }

    public void a(UserView userView, long j, int i, int i2) {
        List<String> arrayList = new ArrayList();
        if (io.a()) {
            userView.r.toggle();
            io.a(this.h, 4, userView.getBestName().toString());
            return;
        }
        cni promotedContent = userView.getPromotedContent();
        if (userView.r.isChecked()) {
            this.j.a(new bok(this.c, this.a, j, promotedContent).a(d()), 3, (bb) this);
            this.b.c().c(j);
            arrayList.add("unfollow");
        } else {
            this.j.a(new boh(this.c, this.a, j, promotedContent).a(false).a(d()), 2, (bb) this);
            this.b.c().b(j);
            arrayList.add("follow");
            if (p.b(((xp) userView.getTag()).f)) {
                arrayList.add("follow_back");
            }
        }
        String a = as.a(this.b.b());
        for (String str : arrayList) {
            long j2 = j;
            as.a(this.a, as.a(a, j() + "::user:" + str), j2, this.b, promotedContent, ((xp) userView.getTag()).g, this.d);
        }
    }

    public void a(ak akVar) {
        this.p = akVar;
    }

    public void n() {
        switch (this.n) {
            case mx.View_android_theme /*0*/:
                a(this.b.a().c);
            case WireMessage.WIRE_CONTROL /*2*/:
                r();
            default:
        }
    }

    public void o() {
        if (this.e != null) {
            this.e.notifyDataSetChanged();
            i();
        }
    }

    public void m() {
        this.e.notifyDataSetChanged();
    }

    public boolean k() {
        return (this.e == null || this.e.isEmpty()) ? false : true;
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            this.n = bundle.getInt("state_recommendation_request_state", 0);
        } else {
            this.n = 0;
        }
    }

    public void b(Bundle bundle) {
        bundle.putInt("state_recommendation_request_state", this.n);
    }

    public void p() {
        s();
    }

    public void q() {
        a(this.m, as.a(as.a(this.b.b()), j() + ":stream::results"));
    }

    private void a(List<TwitterScribeItem> list, String str) {
        if (list != null && !list.isEmpty()) {
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.g()).b(str)).b((List) list)).j(String.valueOf(this.b.a().c)));
            list.clear();
        }
    }

    protected void r() {
        b();
        this.i.initLoader(g(), null, this);
    }

    protected void h() {
        if (this.p != null) {
            this.p.r();
        }
    }

    private void a(long j) {
        x bou = new bou(this.c, this.a, d());
        bou.c = 0;
        bou.j = f();
        bou.b = j;
        this.j.a(bou, 1, (bb) this);
        this.n = 1;
    }

    private boolean a(x xVar) {
        return xVar.N().a(this.a);
    }
}
