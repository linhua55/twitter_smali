package com.twitter.android.nativecards;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import bqk;
import cfb;
import com.twitter.android.SearchActivity;
import com.twitter.android.av.PeriscopeBadge;
import com.twitter.android.av.ae;
import com.twitter.android.av.ay;
import com.twitter.android.av.bk;
import com.twitter.android.av.video.k;
import com.twitter.android.av.video.m;
import com.twitter.library.api.periscope.PeriscopeCapiModel;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.PeriscopeDataSource;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.au;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.util.d;
import defpackage.bcw;

/* compiled from: Twttr */
class z implements OnClickListener {
    private final Activity a;
    private final ad b;
    private final PeriscopeCapiModel c;
    private final m d;
    private ViewGroup e;
    private ViewGroup f;
    private View g;
    private k h;
    private TwitterScribeAssociation i;
    private PeriscopeBadge j;
    private ImageView k;
    private PeriscopeDataSource l;
    private String m;
    private boolean n;

    z(Activity activity, ad adVar, PeriscopeCapiModel periscopeCapiModel, m mVar) {
        this.m = TtmlNode.ANONYMOUS_REGION_ID;
        this.a = activity;
        this.b = adVar;
        this.c = periscopeCapiModel;
        this.d = mVar;
    }

    public void a() {
        l();
        cfb.e("PeriscopeCard", "onCardData error");
    }

    public void b() {
        l();
        cfb.e("PeriscopeCard", "onAttach error");
    }

    public void a(ViewGroup viewGroup) {
        this.e = (ViewGroup) viewGroup.findViewById(2131952493);
        this.f = (ViewGroup) viewGroup.findViewById(2131952886);
        this.g = viewGroup.findViewById(2131952889);
        View findViewById = viewGroup.findViewById(2131952887);
        if (findViewById != null) {
            findViewById.setOnClickListener(this);
            ((TextView) findViewById.findViewById(2131952888)).setText(this.a.getString(2131363544, new Object[]{this.a.getString(2131364349)}));
        }
    }

    public void a(PeriscopeDataSource periscopeDataSource) {
        this.l = periscopeDataSource;
    }

    public void a(TwitterScribeAssociation twitterScribeAssociation) {
        this.i = twitterScribeAssociation;
    }

    public void c() {
        if (this.l != null) {
            Object obj = (this.m.equals("RUNNING") && this.c.i()) ? 1 : null;
            if (!((this.h != null && obj == null) || this.e == null || this.i == null || this.l.l().c == null)) {
                if (this.h != null) {
                    this.h.a();
                }
                this.h = this.d.a(this.a, this.e, new ay(this.b.d(), this.c), new bk(), ai.a(), new ae(), this.i, this.l, null);
                this.h.a(bqk.c, Mode.j);
                this.j = (PeriscopeBadge) this.e.findViewById(2131953015);
                this.k = (ImageView) this.e.findViewById(2131953022);
                if (this.n) {
                    this.h.b();
                }
            }
            this.m = this.c.h();
        }
    }

    public void d() {
        if (this.k != null && this.j != null) {
            if (this.c.k()) {
                this.k.setImageDrawable(this.a.getResources().getDrawable(2130840098));
                this.j.a(this.c.e());
            } else if (this.c.i()) {
                this.k.setImageDrawable(this.a.getResources().getDrawable(bcw.player_overlay));
                this.j.b(this.c.e());
            }
        }
    }

    private void l() {
        if (this.h == null) {
            m();
        } else {
            n();
        }
    }

    private void m() {
        if (this.e != null && this.f != null && this.g != null) {
            this.e.setVisibility(8);
            this.f.setVisibility(8);
            this.g.setVisibility(0);
        }
    }

    private void n() {
        if (this.e != null && this.f != null && this.g != null) {
            this.e.setVisibility(8);
            this.g.setVisibility(8);
            d.b(this.f, 300);
        }
    }

    public void e() {
        if (this.h != null) {
            this.h.a();
            this.h = null;
        }
    }

    public void f() {
        this.n = true;
        if (this.h != null) {
            this.h.b();
        }
    }

    public void g() {
        if (this.h != null) {
            this.h.e();
        }
    }

    public void a(boolean z) {
        if (this.h != null) {
            this.h.a(z);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131952887:
                this.a.startActivity(new Intent(this.a, SearchActivity.class).putExtra("query", this.a.getString(2131364349)).putExtra("search_type", 13));
            default:
        }
    }

    public boolean h() {
        return this.h != null && this.h.c();
    }

    public au i() {
        return this.h != null ? this.h.aR_() : au.a;
    }

    public au j() {
        return this.h != null ? this.h.aS_() : au.a;
    }

    public au k() {
        return this.h != null ? this.h.h() : au.a;
    }
}
