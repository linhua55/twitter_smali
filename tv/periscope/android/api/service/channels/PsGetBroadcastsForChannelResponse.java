package tv.periscope.android.api.service.channels;

import defpackage.op;
import java.util.List;
import tv.periscope.android.api.PsResponse;

/* compiled from: Twttr */
public class PsGetBroadcastsForChannelResponse extends PsResponse {
    @op(a = "Broadcasts")
    public List<Bid> bids;

    /* compiled from: Twttr */
    public class Bid {
        @op(a = "BID")
        public String bid;
    }
}
