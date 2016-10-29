package com.twitter.android.people.adapters.viewbinders;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.v;
import com.twitter.android.people.bb;
import com.twitter.android.yj;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserSocialView;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.model.people.g;
import com.twitter.util.ak;
import defpackage.bcu;
import defpackage.bcv;
import defpackage.bcw;

/* compiled from: Twttr */
public class am implements aj<v> {
    private final FriendshipCache a;
    private final yj b;
    private final bb c;

    public am(FriendshipCache friendshipCache, yj yjVar, bb bbVar) {
        this.b = yjVar;
        this.a = friendshipCache;
        this.c = bbVar;
    }

    public boolean a(i iVar) {
        return iVar instanceof v;
    }

    public View a(v vVar, ViewGroup viewGroup) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(2130969510, viewGroup, false);
    }

    public void a(View view, v vVar) {
        View view2 = (UserSocialView) view;
        com.twitter.model.people.am amVar = vVar.a;
        TwitterUser twitterUser = amVar.a;
        Context context = view.getContext();
        Resources resources = context.getResources();
        a(vVar, view2, amVar);
        view2.setUser(twitterUser);
        view2.a(amVar.b, (int) bcw.ic_activity_follow_tweet_default, ak.f());
        view2.a(twitterUser.g, twitterUser.D);
        view2.setOnClickListener(this.b);
        if (view2.r != null) {
            view2.r.setBackgroundResource(2130837690);
            if (this.a.a(twitterUser.c)) {
                view2.r.setChecked(this.a.k(twitterUser.c));
            } else {
                view2.r.setChecked(p.a(twitterUser.S));
                this.a.a(twitterUser);
            }
            view2.a(2130837689, (e) this.b);
        }
        if (vVar.b == 0) {
            Drawable drawable;
            view2.setUserImageSize((int) resources.getDimension(bcv.user_image_size));
            if (vVar.c) {
                drawable = ContextCompat.getDrawable(context, 2130837666);
            } else {
                drawable = new ColorDrawable(ContextCompat.getColor(context, bcu.clear));
            }
            a(view2, drawable);
            view2.a(true);
            view2.a(twitterUser.g, twitterUser.D);
        } else if (1 == vVar.b) {
            int dimension = (int) resources.getDimension(2131690292);
            int dimension2 = (int) resources.getDimension(2131690293);
            view2.d();
            a(view2, new ColorDrawable(ContextCompat.getColor(context, bcu.app_background)));
            view2.a(false);
            view2.setPadding(view.getPaddingLeft(), dimension, view.getPaddingRight(), dimension2);
        }
    }

    private void a(v vVar, UserView userView, com.twitter.model.people.am amVar) {
        g b = vVar.b();
        Iterable iterable = b.c().c.d;
        this.c.a(b, iterable, amVar, amVar);
        userView.setScribeItem(bb.b(b, iterable, amVar, amVar));
    }

    private static void a(View view, Drawable drawable) {
        int paddingLeft = view.getPaddingLeft();
        int paddingTop = view.getPaddingTop();
        int paddingRight = view.getPaddingRight();
        int paddingBottom = view.getPaddingBottom();
        view.setBackground(new LayerDrawable(new Drawable[]{drawable, ContextCompat.getDrawable(view.getContext(), 2130840039)}));
        view.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    public boolean a(v vVar) {
        return true;
    }
}
