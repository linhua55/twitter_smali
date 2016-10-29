package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.view.View;
import com.twitter.android.ProfileActivity;
import com.twitter.app.common.base.u;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.view.m;
import com.twitter.library.view.o;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import defpackage.bcu;
import defpackage.bli;
import java.util.Map;

/* compiled from: Twttr */
public class x extends bb {
    public final TwitterUser a;
    public final boolean b;
    public final boolean c;
    private CharSequence d;

    x(String str, long j, bli bli, boolean z, String str2, String str3, TwitterUser twitterUser, Cursor cursor) {
        super(str, j, 16, bli, z, str2, str3, cursor);
        this.a = twitterUser;
        this.b = a(twitterUser);
        this.c = b(twitterUser);
    }

    private static boolean a(TwitterUser twitterUser) {
        return aj.b(twitterUser.G);
    }

    private static boolean b(TwitterUser twitterUser) {
        return aj.b(twitterUser.g);
    }

    CharSequence a(Context context, m mVar) {
        if (this.c && this.d == null) {
            if (this.a.D == null || (this.a.D.c.c() && this.a.D.e.c())) {
                this.d = this.a.g;
            } else {
                Resources resources = context.getResources();
                this.d = o.a(this.a.g).a(this.a.D).a(mVar).a(resources.getColor(2131886264)).b(resources.getColor(bcu.link_selected)).a();
            }
        }
        return this.d;
    }

    public int a() {
        return 14;
    }

    public at a(View view) {
        return new y(view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new w(map);
    }

    public Intent a(Context context) {
        return new u().d(true).a(context, ProfileActivity.class).putExtra("user_id", this.a.bf_()).putExtra("screen_name", this.a.k);
    }

    public String b() {
        return "TYPE_PROFILE";
    }
}
