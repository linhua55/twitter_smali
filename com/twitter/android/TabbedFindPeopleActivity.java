package com.twitter.android;

import android.os.Bundle;
import com.twitter.app.common.base.t;
import com.twitter.app.users.UsersFragment;
import com.twitter.app.users.aa;

/* compiled from: Twttr */
public class TabbedFindPeopleActivity extends TabbedUsersActivity {
    public void b(Bundle bundle, t tVar) {
        this.a = 2;
        super.b(bundle, tVar);
        setTitle(2131364116);
        m();
        r();
    }

    private void m() {
        a("tailored", 2131362702, a(21).e(), UsersFragment.class);
    }

    private void r() {
        a("popular", 2131362701, ((aa) ((aa) new aa().m(true)).h(false)).e(), CategoriesFragment.class);
    }

    protected aa a(int i) {
        return (aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) new aa().g(i)).f(true)).d(true)).k(true)).l(true)).j(getIntent().getBooleanExtra("hide_contacts_import_cta", false))).h(true);
    }
}
