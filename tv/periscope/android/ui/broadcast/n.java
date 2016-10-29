package tv.periscope.android.ui.broadcast;

/* compiled from: Twttr */
class n implements Runnable {
    final /* synthetic */ ChannelView a;

    n(ChannelView channelView) {
        this.a = channelView;
    }

    public void run() {
        ChannelView.a(this.a);
    }
}
