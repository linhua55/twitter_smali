package com.twitter.app.users;

import bov;
import com.twitter.android.xp;
import com.twitter.library.widget.UserApprovalView;
import com.twitter.library.widget.e;

/* compiled from: Twttr */
class s implements e<UserApprovalView> {
    final /* synthetic */ UsersFragment a;

    private s(UsersFragment usersFragment) {
        this.a = usersFragment;
    }

    public void a(UserApprovalView userApprovalView, long j, int i, int i2) {
        xp xpVar = (xp) userApprovalView.getTag();
        if (userApprovalView.a(2)) {
            UsersFragment.a(this.a, j, userApprovalView.getPromotedContent(), xpVar, i2);
            this.a.n.put(Long.valueOf(j), Integer.valueOf(3));
        } else if (userApprovalView.a(0)) {
            if (this.a.n.containsKey(Long.valueOf(j))) {
                this.a.a(j, xpVar.g, userApprovalView.getPromotedContent(), xpVar, i2);
            } else {
                UsersFragment.a(this.a).a(new bov(this.a.getActivity(), this.a.M(), j, 1));
            }
            this.a.n.put(Long.valueOf(j), Integer.valueOf(1));
        } else if (userApprovalView.a(1)) {
            if (!this.a.n.containsKey(Long.valueOf(j))) {
                UsersFragment.b(this.a).a(new bov(this.a.getActivity(), this.a.M(), j, 2));
            }
            this.a.n.put(Long.valueOf(j), Integer.valueOf(2));
        } else {
            this.a.n.remove(Long.valueOf(j));
        }
    }
}
