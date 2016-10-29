package com.twitter.android;

import android.content.DialogInterface;
import bbu;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.app.common.base.m;
import com.twitter.library.api.dm.requests.x;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class dj implements m {
    final /* synthetic */ boolean a;
    final /* synthetic */ DMInboxFragment b;

    dj(DMInboxFragment dMInboxFragment, boolean z) {
        this.b = dMInboxFragment;
        this.a = z;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i2) {
            case Util.TYPE_DASH /*0*/:
                DeleteConversationDialog.a(2, DMInboxFragment.b(this.b), DMInboxFragment.c(this.b), "inbox").a(this.b).a(this.b.getActivity().getSupportFragmentManager());
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.a) {
                    bbu.a(new TwitterScribeLog(DMInboxFragment.d(this.b).g()).b(new String[]{"messages:inbox::thread:mute_dm_thread"}));
                    DMInboxFragment.a(this.b, new x(this.b.getActivity(), DMInboxFragment.e(this.b), DMInboxFragment.c(this.b), true), 4, 0);
                    return;
                }
                bbu.a(new TwitterScribeLog(DMInboxFragment.f(this.b).g()).b(new String[]{"messages:inbox::thread:unmute_dm_thread"}));
                DMInboxFragment.b(this.b, new x(this.b.getActivity(), DMInboxFragment.g(this.b), DMInboxFragment.c(this.b), false), 5, 0);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                ReportConversationDialog.a(3, DMInboxFragment.b(this.b), DMInboxFragment.c(this.b), "inbox", this.b).a(this.b).a(this.b.getActivity().getSupportFragmentManager());
            default:
        }
    }
}
