package com.twitter.app.users;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.bcx;

/* compiled from: Twttr */
public class CheckableFollowFlowFollowActivity extends FollowFlowFollowActivity {
    protected /* synthetic */ y b(Intent intent) {
        return a(intent);
    }

    protected /* synthetic */ UsersFragment c() {
        return m();
    }

    protected CheckableUsersFragment m() {
        return new CheckableUsersFragment();
    }

    protected boolean r() {
        return true;
    }

    protected i a(Intent intent) {
        j b = ((j) ((j) j.a(intent).h(false)).d(this.b.a)).b(!this.d.b());
        if (this.b.c) {
            ((j) ((j) ((j) b.b(2131362644)).h(1000)).g(28)).a(false).b(getString(2131362704));
        } else if (this.b.d) {
            ((j) ((j) b.g(32)).h(40)).a(this.d.c()).b(this.d.d()).b(getString(2131362833)).a(true);
        }
        if (this.b.f) {
            b.c(true);
            if (this.b.c) {
                b.a(getString(2131362708));
            } else if (this.b.d) {
                b.a(getString(2131362834));
            }
        }
        return b.a();
    }

    public void onClick(View view) {
        Session ab = ab();
        long g = ab.g();
        if (view.getId() == 2131952009) {
            int U = this.a.U();
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(this.b.a, t(), BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "remove")).a((long) (this.a.aF() - U)));
            this.d.a(U);
            ((CheckableUsersFragment) this.a).a(ab);
        } else if (view.getId() == bcx.skip) {
            bbu.a(new TwitterScribeLog(g).b(this.b.a, t(), BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "skip"));
        }
        a(g);
    }

    private void a(long j) {
        this.d.b((Activity) this);
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(j).b(this.b.a, t(), BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "followable")).a((long) this.a.aF()));
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(j).b(this.b.a, t(), BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "resolved")).a((long) this.a.aF()));
    }
}
