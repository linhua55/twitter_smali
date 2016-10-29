package tv.periscope.android.ui.chat;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;

/* compiled from: Twttr */
class i extends LinearLayoutManager {
    final /* synthetic */ ChatMessageContainerView a;

    i(ChatMessageContainerView chatMessageContainerView, Context context) {
        this.a = chatMessageContainerView;
        super(context);
    }

    public boolean canScrollVertically() {
        return false;
    }
}
