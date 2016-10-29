package com.twitter.app.common.base;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.composer.ba;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class q implements ba {
    final /* synthetic */ TwitterFragmentActivity a;

    q(TwitterFragmentActivity twitterFragmentActivity) {
        this.a = twitterFragmentActivity;
    }

    public void a(int i) {
        String str;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                str = "composebox";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                str = "photo_picker";
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                str = "camera";
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                str = "drafts";
                break;
            default:
                str = BuildConfig.VERSION_NAME;
                break;
        }
        bbu.a(new TwitterScribeLog(this.a.ab().g()).b(BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "compose_bar", str, "click"));
        this.a.j(i);
    }
}
