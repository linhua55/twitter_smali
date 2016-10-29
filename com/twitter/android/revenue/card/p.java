package com.twitter.android.revenue.card;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.PromotedEvent;

/* compiled from: Twttr */
class p implements OnClickListener {
    final /* synthetic */ k a;

    p(k kVar) {
        this.a = kVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                this.a.r.a(PromotedEvent.o);
                this.a.a(this.a.f);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a.r.a(PromotedEvent.o);
                this.a.a(this.a.g);
            default:
        }
    }
}
