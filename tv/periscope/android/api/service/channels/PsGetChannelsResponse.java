package tv.periscope.android.api.service.channels;

import defpackage.op;
import java.util.List;
import tv.periscope.android.api.PsResponse;

/* compiled from: Twttr */
public class PsGetChannelsResponse extends PsResponse {
    @op(a = "Channels")
    public List<PsChannel> channels;
}
