package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.dm.m;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.widget.ToolbarWrapperLayout;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbu;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class DMAddParticipantsActivity extends TwitterFragmentActivity {
    private DMComposeFragment a;

    public t a(Bundle bundle, t tVar) {
        tVar.a(false);
        tVar.a(0);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        if (bundle == null) {
            this.a = new DMComposeFragment();
            this.a.a(new m(getIntent().getExtras()).e(true).d());
            getSupportFragmentManager().beginTransaction().add(2131951923, this.a, "composer").commit();
        } else {
            this.a = (DMComposeFragment) getSupportFragmentManager().findFragmentByTag("composer");
        }
        ((ToolbarWrapperLayout) ObjectUtils.a(findViewById(2131952491))).a();
    }

    public boolean a(w wVar) {
        wVar.a(2132017163);
        return super.a(wVar);
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == 2131953428) {
            bbu.a(new TwitterScribeLog(ab().g()).b("messages:add_participants:::done"));
            setResult(-1, new Intent().putExtra("user_ids", CollectionUtils.e(this.a.u())));
            finish();
            return true;
        } else if (a != k.home) {
            return super.a(acVar);
        } else {
            setResult(0);
            finish();
            return true;
        }
    }
}
