package tv.periscope.chatman.api;

import defpackage.op;

/* compiled from: Twttr */
public class HistoryRequest {
    @op(a = "access_token")
    public final String accessToken;
    @op(a = "cursor")
    public final String cursor;
    @op(a = "limit")
    public final Integer limit;
    @op(a = "since")
    public final long since;

    public HistoryRequest(String str, long j, String str2, Integer num) {
        this.accessToken = str;
        this.since = j;
        this.cursor = str2;
        this.limit = num;
    }
}
