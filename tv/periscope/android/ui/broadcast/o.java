package tv.periscope.android.ui.broadcast;

import defpackage.dcg;
import tv.periscope.android.ui.broadcast.moderator.j;

/* compiled from: Twttr */
class o implements j {
    final /* synthetic */ ChannelView a;

    o(ChannelView channelView) {
        this.a = channelView;
    }

    public void a(int i) {
        String toLowerCase = dcg.a(this.a.getResources(), (long) i).toLowerCase();
        ChannelView.b(this.a).setChatStatus(this.a.getResources().getString(tv.periscope.android.library.o.ps__chat_status_moderation_limited, new Object[]{toLowerCase}));
    }
}
