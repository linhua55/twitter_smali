package com.twitter.android.nativecards;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.util.aq;

/* compiled from: Twttr */
class r implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ Activity b;
    final /* synthetic */ String c;
    final /* synthetic */ q d;

    r(q qVar, String str, Activity activity, String str2) {
        this.d = qVar;
        this.a = str;
        this.b = activity;
        this.c = str2;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                this.d.r.c("share", this.d.m());
                this.d.s.a(this.a);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.d.r.c("share", this.d.m());
                aq.a(this.b, this.a);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.d.r.c("share", this.d.m());
                this.d.s.a(this.a, this.c);
            default:
        }
    }
}
