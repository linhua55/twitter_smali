package com.twitter.android.widget;

import com.twitter.app.users.UsersFragment;

/* compiled from: Twttr */
public class ScrollingHeaderUsersListFragment extends UsersFragment {
    private eq a;

    protected boolean p() {
        return true;
    }

    protected boolean Z() {
        return true;
    }

    protected void J_() {
    }

    public void a(eq eqVar) {
        this.a = eqVar;
    }

    public void G() {
        if (this.a != null) {
            this.a.a();
        }
        super.G();
    }
}
