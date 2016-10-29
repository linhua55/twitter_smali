package com.twitter.android;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.android.util.u;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.users.VerifiedFollowersUsersFragment;
import com.twitter.app.users.aa;
import com.twitter.app.users.q;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.Session;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.l;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import java.util.Arrays;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TabbedVitFollowersActivity extends AbsTabbedPageFragmentActivity {
    public static final Uri c;
    public static final Uri d;
    private l e;

    static {
        c = Uri.parse("twitter://followers/all");
        d = Uri.parse("twitter://followers/verified");
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.d(2130969437);
        return a;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        setTitle(2131363385);
        Session ab = ab();
        this.e = new l(this, ab.e(), "vit_followers");
        long g = ab.g();
        u.a((TwitterFragmentActivity) this, q.a(getIntent()).a());
        a(h());
        a_(Uri.parse(a(bundle != null, getIntent())));
        bbu.a(new TwitterScribeLog(g).b("followers:vit_verified_followers:::impression"));
        a(this.a.getCurrentItem(), ab().g());
    }

    ej a(List<at> list, HorizontalListView horizontalListView, DockLayout dockLayout) {
        return new qy(this, this, list, this.a, horizontalListView, this.b, dockLayout);
    }

    String a(boolean z, Intent intent) {
        String stringExtra = z ? null : intent.getStringExtra("extra_start_tab");
        if (stringExtra != null) {
            return stringExtra;
        }
        return c();
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017201);
        return true;
    }

    void a(int i, long j) {
        String str;
        switch (i) {
            case mx.View_android_theme /*0*/:
                str = "all";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                str = "verified";
                break;
            default:
                str = null;
                break;
        }
        if (str != null) {
            bbu.a(new TwitterScribeLog(j).b("followers:vit_verified_followers", str, ":impression"));
        }
    }

    protected l o_() {
        return this.e;
    }

    List<at> h() {
        return Arrays.asList(new at[]{a(c, 0), a(d, 1)});
    }

    private at a(Uri uri, int i) {
        int i2;
        int i3;
        int i4;
        if (c.equals(uri)) {
            i2 = -1;
            i3 = 1;
            i4 = 2131362720;
        } else if (d.equals(uri)) {
            i4 = 2131362718;
            i3 = 29;
            i2 = 2131362719;
        } else {
            throw new IllegalArgumentException("Invalid page");
        }
        aa aaVar = (aa) ((aa) ((aa) ((aa) ((aa) ((aa) a(aa.a(getIntent()))).h(true)).g(i3)).d(true)).k(true)).a("fragment_page_number", i);
        if (i2 > -1) {
            aaVar.b(i2);
        }
        return new au(uri, VerifiedFollowersUsersFragment.class).a(getString(i4)).a(aaVar.d()).a();
    }
}
