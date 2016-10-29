package com.twitter.android.people.adapters.viewbinders;

import android.content.Context;
import android.support.annotation.LayoutRes;
import android.view.View;
import com.twitter.android.people.adapters.y;
import com.twitter.android.people.bb;
import com.twitter.android.timeline.g;
import com.twitter.android.yj;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserSocialView;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.model.people.am;
import com.twitter.util.ak;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ReferenceList;

/* compiled from: Twttr */
public class at extends g<am> {
    private final ReferenceList<UserSocialView> b;
    private y c;

    public /* synthetic */ void a(View view, Object obj, int i) {
        b(view, (am) obj, i);
    }

    public /* synthetic */ void b(View view, Object obj, int i) {
        a(view, (am) obj, i);
    }

    public at(@LayoutRes int i, FriendshipCache friendshipCache, yj yjVar, ReferenceList<UserSocialView> referenceList) {
        super(i, friendshipCache, yjVar);
        this.b = referenceList;
    }

    public View a(Context context, am amVar, int i) {
        View view = (UserSocialView) CollectionUtils.b(this.b);
        if (view == null) {
            return super.a(context, amVar, i);
        }
        this.b.c(view);
        a(view, amVar, i);
        return view;
    }

    public void a(View view, am amVar, int i) {
        UserSocialView userSocialView = (UserSocialView) view;
        TwitterUser twitterUser = amVar.a;
        String str = amVar.b;
        userSocialView.setUser(twitterUser);
        if (userSocialView.r != null) {
            if (this.a.a(twitterUser.c)) {
                userSocialView.r.setChecked(this.a.k(twitterUser.c));
            } else {
                userSocialView.r.setChecked(p.a(twitterUser.S));
                this.a.a(twitterUser);
            }
        }
        userSocialView.a(str, ak.f());
        userSocialView.setScribeItem(bb.b(this.c.b(), this.c.a, amVar, amVar));
    }

    public void b(View view, am amVar, int i) {
        this.b.b((UserSocialView) view);
    }

    public void a(y yVar) {
        this.c = yVar;
    }
}
