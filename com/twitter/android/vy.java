package com.twitter.android;

import com.twitter.library.media.widget.UserImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.x;
import cys;

/* compiled from: Twttr */
class vy implements cys<x<TwitterUser>> {
    final /* synthetic */ UserImageView a;
    final /* synthetic */ vx b;

    vy(vx vxVar, UserImageView userImageView) {
        this.b = vxVar;
        this.a = userImageView;
    }

    public /* synthetic */ void call(Object obj) {
        a((x) obj);
    }

    public void a(x<TwitterUser> xVar) {
        if (xVar.c()) {
            this.a.a(((TwitterUser) xVar.b()).e);
        }
    }
}
