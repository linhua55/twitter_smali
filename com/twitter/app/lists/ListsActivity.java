package com.twitter.app.lists;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.android.mx;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.bus;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ListsActivity extends TwitterFragmentActivity implements i {
    private long a;
    private boolean b;

    public t a(Bundle bundle, t tVar) {
        tVar.a(0);
        tVar.d(true);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        c a = c.a(intent);
        this.a = a.c();
        this.b = a.b() == ab().g();
        setTitle(a(a.f(), a.g()));
        if (bundle == null) {
            Fragment listsFragment = new ListsFragment();
            listsFragment.a(((h) ((h) h.a(intent).a(this.b).b(a.e()).a(a.d()).b(2131363161)).c(this.b ? 2131363164 : 2131363160)).a());
            listsFragment.a((i) this);
            getSupportFragmentManager().beginTransaction().add(2131951923, listsFragment).commit();
        }
    }

    private static int a(boolean z, int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                if (z) {
                    return 2131362917;
                }
                return 2131363412;
            case WireMessage.WIRE_CHAT /*1*/:
                return 2131363411;
            case WireMessage.WIRE_CONTROL /*2*/:
                return 2131363410;
            default:
                if (bus.a().f()) {
                    return 2131362570;
                }
                return 2131363412;
        }
    }

    protected void onStart() {
        super.onStart();
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(ab().g());
        String[] strArr = new String[2];
        strArr[0] = this.b ? "own_lists" : "lists";
        strArr[1] = ":::impression";
        bbu.a(twitterScribeLog.b(strArr));
    }

    public boolean a(w wVar) {
        super.a(wVar);
        if (this.b) {
            wVar.a(2132017160);
        }
        return true;
    }

    public boolean a(ac acVar) {
        if (acVar.a() != 2131953424) {
            return super.a(acVar);
        }
        startActivity(new Intent(this, ListCreateEditActivity.class));
        bbu.a(new TwitterScribeLog(ab().g()).b("me:lists:list:new_list:create"));
        return true;
    }

    public void a(long j, String str) {
        setResult(-1, new d(j, this.a).a());
        finish();
    }
}
