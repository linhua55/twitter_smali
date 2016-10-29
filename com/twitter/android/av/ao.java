package com.twitter.android.av;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.PromotedEvent;

/* compiled from: Twttr */
class ao implements OnClickListener {
    final /* synthetic */ FullscreenConversationCardCanvasChromeView a;

    ao(FullscreenConversationCardCanvasChromeView fullscreenConversationCardCanvasChromeView) {
        this.a = fullscreenConversationCardCanvasChromeView;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                this.a.s.a(PromotedEvent.o);
                this.a.a(this.a.p.b);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a.s.a(PromotedEvent.o);
                this.a.a(this.a.p.d);
            default:
        }
    }
}
