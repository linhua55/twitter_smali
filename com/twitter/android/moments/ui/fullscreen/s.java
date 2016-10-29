package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.ProfileActivity;
import com.twitter.app.common.base.u;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
final class s implements OnClickListener {
    final /* synthetic */ Context a;
    final /* synthetic */ TwitterUser b;
    final /* synthetic */ a c;
    final /* synthetic */ long d;

    s(Context context, TwitterUser twitterUser, a aVar, long j) {
        this.a = context;
        this.b = twitterUser;
        this.c = aVar;
        this.d = j;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                this.a.startActivity(u.a(ProfileActivity.a(this.a, this.b.c, null, null, null, 0, null, null), true));
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.c.a(this.b, this.d);
            default:
        }
    }
}
