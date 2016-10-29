package com.twitter.library.initialization;

import android.content.Context;
import ark;
import aru;
import asa;
import bvh;
import bvj;
import com.twitter.library.client.bf;
import com.twitter.library.client.bg;
import defpackage.aof;

/* compiled from: Twttr */
public class FeatureSwitchesInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        bvj.a(context);
        bg a = bg.a();
        a.a(a(context));
        bvj.a(a.c().g());
        if (bg.a().e()) {
            asa.a("fs:first_download_req", aru.b(), ark.m).j();
            bvh.a();
        }
    }

    private bf a(Context context) {
        return new c(this, context);
    }
}
