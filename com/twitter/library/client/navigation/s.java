package com.twitter.library.client.navigation;

import android.view.View;
import android.widget.TextView;
import bcx;
import com.twitter.library.api.UserSettings;
import com.twitter.model.core.TwitterUser;
import defpackage.bcw;

/* compiled from: Twttr */
class s implements Runnable {
    final /* synthetic */ View a;
    final /* synthetic */ TwitterUser b;
    final /* synthetic */ UserSettings c;
    final /* synthetic */ r d;

    s(r rVar, View view, TwitterUser twitterUser, UserSettings userSettings) {
        this.d = rVar;
        this.a = view;
        this.b = twitterUser;
        this.c = userSettings;
    }

    public void run() {
        TextView textView = (TextView) this.a.findViewById(bcx.name);
        textView.setText(this.b.d);
        ((TextView) this.a.findViewById(bcx.username)).setText("@" + this.b.k);
        int i = this.b.n ? bcw.ic_drawer_profile_verified : this.c != null ? this.c.j : this.b.m ? bcw.ic_drawer_profile_private : this.b.o ? bcw.ic_drawer_profile_translator : 0;
        textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, i, 0);
    }
}
