package com.twitter.android.people.adapters;

import android.content.Context;
import android.support.annotation.LayoutRes;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.profiles.as;
import com.twitter.android.widget.l;
import com.twitter.android.yj;
import com.twitter.library.client.bg;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.util.af;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.widget.UserView;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.people.aa;
import com.twitter.model.people.am;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bcu;
import defpackage.cfd;
import defpackage.cfe;
import defpackage.cfg;
import defpackage.cfh;

/* compiled from: Twttr */
public class f implements l<aa> {
    @LayoutRes
    private final int a;
    private final yj b;
    private final cfg c;

    public /* synthetic */ void a(View view, Object obj, int i) {
        b(view, (aa) obj, i);
    }

    public /* synthetic */ void b(View view, Object obj, int i) {
        a(view, (aa) obj, i);
    }

    public f(Context context, @LayoutRes int i, yj yjVar) {
        this.a = i;
        this.b = yjVar;
        this.c = new cfe(new cfh(ContextCompat.getColor(context, bcu.transparent_black)), new cfd(context, 9));
    }

    public View a(Context context, aa aaVar, int i) {
        View view = (UserView) LayoutInflater.from(context).inflate(this.a, null);
        view.setTag(new h(null));
        view.setOnClickListener(this.b);
        as.a(view.getImageView(), 2131689852, 2131689851, bcu.app_background);
        a(view, aaVar, i);
        return view;
    }

    public void a(View view, aa aaVar, int i) {
        am amVar = (am) CollectionUtils.b(aaVar.d);
        if (amVar == null) {
            throw new IllegalStateException("Page must contain a user.");
        }
        Context context = view.getContext();
        UserView userView = (UserView) view;
        h hVar = (h) view.getTag();
        TwitterUser twitterUser = amVar.a;
        userView.setUser(twitterUser);
        userView.setScribeItem(TwitterScribeItem.a(twitterUser));
        userView.setScribeComponent(twitterUser.T != null ? twitterUser.T.e : null);
        hVar.b.setVisibility(0);
        hVar.b.setText(aaVar.a.c.c);
        hVar.c.setVisibility(0);
        hVar.c.setText(aaVar.a.d.c);
        if (twitterUser.e != null) {
            hVar.a.a(UserImageRequest.a(af.a(bg.a().c().g(), twitterUser.e)).a(this.c));
        }
        userView.setOnClickListener(new g(this, context, aaVar, twitterUser));
    }

    public void b(View view, aa aaVar, int i) {
    }
}
