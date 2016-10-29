package com.twitter.android.communities;

import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import com.twitter.android.communities.header.TextHeaderView;
import com.twitter.android.communities.member.CommunityMembersActivity;
import com.twitter.android.eventtimelines.EventTimelineActivity;
import com.twitter.app.common.app.n;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.t;
import com.twitter.config.d;
import com.twitter.library.client.at;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import defpackage.cfb;
import java.util.List;

/* compiled from: Twttr */
public class CommunityActivity extends EventTimelineActivity {
    ai a;
    TextHeaderView b;
    final o c;
    private long f;

    public CommunityActivity() {
        this.a = ai.a;
        this.c = new a(this);
    }

    protected /* synthetic */ a c(t tVar) {
        return a(tVar);
    }

    public void b(Bundle bundle, com.twitter.app.common.base.t tVar) {
        super.b(bundle, tVar);
        if (d.a("communities_experience_enabled")) {
            if (C()) {
                this.b = new TextHeaderView(this);
            }
            super.b(bundle, tVar);
            ae aeVar = (ae) V();
            aeVar.a().a(this.c);
            com.twitter.android.communities.header.a c = aeVar.c();
            c.a(this.c);
            c.a(this.b);
            return;
        }
        cfb.b("CommunityActivity", "Communities feature switch disabled. Exiting.");
        finish();
    }

    protected String f() {
        return "communities";
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017195);
        return true;
    }

    public boolean a(ac acVar) {
        if (2131953493 != acVar.a()) {
            return super.a(acVar);
        }
        startActivity(CommunityMembersActivity.a(this, this.f));
        return true;
    }

    protected View au_() {
        return this.b;
    }

    protected boolean y() {
        return false;
    }

    protected ae a(t tVar) {
        c cVar;
        this.f = getIntent().getLongExtra("community_id", -1);
        if (this.f == -1) {
            cVar = c.a;
        } else {
            cVar = new c(this.f);
        }
        return al.d().a(n.s()).a(new t(cVar)).a();
    }

    protected List<at> N_() {
        return com.twitter.util.collection.n.g();
    }

    protected PagerAdapter a(List<at> list, ViewPager viewPager) {
        return new b(this, list, viewPager, this.p, this.d);
    }
}
