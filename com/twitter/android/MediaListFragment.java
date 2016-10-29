package com.twitter.android;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.v4.content.Loader;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.Toast;
import aow;
import com.twitter.android.client.w;
import com.twitter.android.metrics.b;
import com.twitter.android.profiles.as;
import com.twitter.android.settings.z;
import com.twitter.android.widget.ScrollingHeaderListFragment;
import com.twitter.android.widget.cb;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.p;
import com.twitter.app.common.list.t;
import com.twitter.library.api.timeline.ag;
import com.twitter.library.api.timeline.ak;
import com.twitter.library.api.timeline.x;
import com.twitter.library.av.ai;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.ui.image.i;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.serialization.m;
import defpackage.amc;
import defpackage.ame;
import defpackage.amf;
import defpackage.ark;
import defpackage.bbu;
import defpackage.bdl;
import defpackage.cgu;
import java.util.List;
import java.util.Set;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class MediaListFragment<T> extends ScrollingHeaderListFragment<T, cb<T>> implements OnClickListener {
    protected boolean a;
    protected b b;
    private final List<TwitterScribeItem> c;
    private final Set<Long> d;
    private long e;
    private TwitterUser f;
    private boolean g;
    private boolean h;
    private i i;

    public MediaListFragment() {
        this.c = MutableList.a();
        this.d = MutableSet.a();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.h = C().a("is_me", false);
        m();
        this.i = new i();
        this.f = (TwitterUser) C().h("profile_user");
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        this.g = false;
        View a = super.a(layoutInflater, bundle);
        ap().a((p) this);
        return a;
    }

    protected boolean z() {
        return ai.a();
    }

    protected void m() {
        this.b = new b("list:photogrid", "list:photogrid", ark.l, aG());
        this.b.b(this.Z.c().g());
        this.b.i();
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            this.e = bundle.getLong("user_id", -1);
            this.a = bundle.getBoolean("is_last");
        } else {
            this.e = C().a("user_id", -1);
        }
        a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.e)).b(i())).c("photo_grid"));
        bdl n = n();
        a((w) n);
        ap().a(n);
    }

    protected cb n() {
        return new jt(getActivity(), 1, this, new jw(this), aD());
    }

    protected String i() {
        return as.a(this.h);
    }

    public void a() {
        super.a();
        if (this.e > 0) {
            ac_();
        }
    }

    public void e() {
        super.e();
        if (!this.c.isEmpty()) {
            String a = as.a(i(), "photo_grid:stream::tweets");
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(a)).a(aD())).b(this.c));
            this.c.clear();
        }
    }

    protected void d() {
        super.d();
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(as.a(i(), "photo_grid:::impression"))).a(aD())).j(String.valueOf(this.f.bf_())));
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("user_id", this.e);
        bundle.putBoolean("is_last", this.a);
    }

    public void onStart() {
        super.onStart();
        this.i.aG_();
    }

    public void onStop() {
        this.i.f();
        super.onStop();
    }

    protected void a(t tVar) {
        super.a(tVar);
        if (!tVar.d()) {
            tVar.d(2130969179).f(2130968803);
        }
    }

    protected Loader<Cursor> q_() {
        aow a = amf.a(q());
        return new bu(getActivity(), a.a, a.b, a.c, a.d, a.e);
    }

    protected amc q() {
        return new ame().a(17).b(aT().g()).a("unspecified").c(this.Y).a(this.h).b(z.a(aT())).a();
    }

    @SuppressLint({"MissingSuperCall"})
    protected void a(cgu<T> cgu_T) {
        b((cgu) cgu_T);
        if (r()) {
            if (!a(3)) {
                this.b.j();
            }
            this.g = true;
            return;
        }
        this.b.j();
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        if (i2 == 0 || !z) {
            return super.a(absListView, i, i2, i3, z);
        }
        if (i == 0) {
            ap().v();
        } else if (((cb) az()).getCount() > 0 && i > 0 && i + i2 >= i3) {
            h();
        }
        return super.a(absListView, i, i2, i3, z);
    }

    public boolean a(AbsListView absListView, int i) {
        c(i);
        o(i);
        return false;
    }

    private void c(int i) {
        if (i == 2 || i == 0) {
            ((cb) az()).b(i == 2);
        }
    }

    protected void g() {
        a(2);
    }

    protected void h() {
        if (ar() && aR() && !this.a && ((cb) az()).getCount() < 400) {
            a(1);
        }
    }

    public void onClick(View view) {
        jy jyVar = (jy) view.getTag();
        aow a = amf.a(q());
        GalleryActivity.a(getActivity(), new Intent(getActivity(), GalleryActivity.class).setData(a.a).putExtra("prj", a.b).putExtra("sel", a.c).putExtra("orderBy", a.e).putExtra("id", jyVar.a.d().H).putExtra("media", m.a(jyVar.a.e(), MediaEntity.a)).putExtra("page_cache_size", 1).putExtra("context", 9).putExtra("association", aD()), jyVar.b);
    }

    protected void ac_() {
        super.ac_();
        if (ao() && r()) {
            a(3);
            this.g = true;
        }
    }

    private boolean r() {
        return ((cb) az()).isEmpty() && !this.g;
    }

    protected boolean a(int i) {
        if (!a_(i)) {
            return false;
        }
        ak b = new x(getActivity(), aT(), this.e).c(e(i)).b(f(i));
        int i2 = (i == 2 || i == 4) ? 20 : 0;
        return c(b.c(i2).b("scribe_event", TwitterListFragment.a(i(), "photo_grid", i)), 0, i);
    }

    @CallSuper
    protected void a(com.twitter.library.service.x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        this.b.j();
        if (!xVar.U()) {
            Toast.makeText(this.T, 2131364025, 1).show();
        } else if (((ag) xVar).H() == 0) {
            this.a = true;
        }
    }

    private long e(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return 0;
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                Cursor aA = aA();
                if (aA == null || !aA.moveToFirst()) {
                    return 0;
                }
                return aA.getLong(23);
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
    }

    private long f(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                Cursor aA = aA();
                if (aA == null || !aA.moveToLast()) {
                    return 0;
                }
                return aA.getLong(23);
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 0;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
    }
}
