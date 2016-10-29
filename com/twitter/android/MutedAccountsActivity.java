package com.twitter.android;

import android.os.Bundle;
import android.support.annotation.StringRes;
import com.twitter.app.common.base.t;
import com.twitter.app.users.UsersFragment;
import com.twitter.app.users.aa;
import com.twitter.library.util.FriendshipCache;

/* compiled from: Twttr */
public class MutedAccountsActivity extends TabbedUsersActivity {
    private FriendshipCache g;

    public void b(Bundle bundle, t tVar) {
        this.a = 2;
        super.b(bundle, tVar);
        setTitle(2131363127);
        this.g = new FriendshipCache();
        m();
        r();
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        tVar.b(false);
        tVar.a(false);
        tVar.c(true);
        return a;
    }

    private void m() {
        a("all", 2131363128, a(26, 2131362649).e(), UsersFragment.class);
    }

    private void r() {
        a("automated", 2131363121, ((aa) a(38, 2131362648).m(true)).e(), UsersFragment.class);
    }

    protected aa a(int i, @StringRes int i2) {
        long longExtra = getIntent().getLongExtra("target_session_owner_id", ab().g());
        return (aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) new aa().h(true)).c(i2)).c(longExtra)).g(i)).d(true)).k(true)).l(false)).a(this.g)).d(longExtra);
    }
}
