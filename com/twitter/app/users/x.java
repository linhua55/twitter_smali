package com.twitter.app.users;

import com.twitter.library.service.z;
import defpackage.bgl;
import defpackage.bou;

/* compiled from: Twttr */
class x extends z {
    final /* synthetic */ UsersFragment a;

    private x(UsersFragment usersFragment) {
        this.a = usersFragment;
    }

    public void a(com.twitter.library.service.x xVar) {
        super.a(xVar);
        if (xVar instanceof bgl) {
            if (!UsersFragment.f(this.a)) {
                UsersFragment.a(this.a, xVar);
            }
        } else if ((xVar instanceof bou) && !UsersFragment.g(this.a) && ((bou) xVar).a == 19) {
            UsersFragment.b(this.a, xVar);
        }
    }
}
