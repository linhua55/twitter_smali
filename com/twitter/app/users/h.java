package com.twitter.app.users;

import com.twitter.library.service.x;
import com.twitter.library.service.z;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class h extends z {
    private final WeakReference<CheckableUsersFragment> a;

    h(CheckableUsersFragment checkableUsersFragment) {
        this.a = new WeakReference(checkableUsersFragment);
    }

    public void a(x xVar) {
        super.a(xVar);
        CheckableUsersFragment checkableUsersFragment = (CheckableUsersFragment) this.a.get();
        if (checkableUsersFragment != null && checkableUsersFragment.ad()) {
            CheckableUsersFragment.a(checkableUsersFragment, xVar);
        }
    }
}
