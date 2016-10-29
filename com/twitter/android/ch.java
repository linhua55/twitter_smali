package com.twitter.android;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.ui.widget.Tooltip;
import com.twitter.ui.widget.af;

/* compiled from: Twttr */
class ch implements af {
    final /* synthetic */ DMConversationFragment a;

    ch(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public void a(Tooltip tooltip, int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                tooltip.a(true);
            default:
        }
    }
}
