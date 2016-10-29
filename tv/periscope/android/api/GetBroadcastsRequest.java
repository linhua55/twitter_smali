package tv.periscope.android.api;

import defpackage.op;
import java.util.ArrayList;

/* compiled from: Twttr */
public class GetBroadcastsRequest extends PsRequest {
    @op(a = "broadcast_ids")
    public ArrayList<String> ids;
    @op(a = "only_public_publish")
    public boolean onlyPublicPublish;
}
