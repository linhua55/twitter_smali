package com.twitter.android;

import android.content.DialogInterface;
import com.twitter.app.common.base.m;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class fy implements m {
    final /* synthetic */ FlowActivity a;

    fy(FlowActivity flowActivity) {
        this.a = flowActivity;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 1) {
            switch (i2) {
                case mx.View_android_theme /*0*/:
                    this.a.c(true);
                case WireMessage.WIRE_CHAT /*1*/:
                    this.a.f();
                default:
            }
        }
    }
}
