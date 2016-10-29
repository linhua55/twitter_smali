package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class BroadcastSearchRequest extends PsRequest {
    @op(a = "include_replay")
    public boolean includeReplay;
    @op(a = "query")
    public String query;
    @op(a = "search")
    public String search;
}
