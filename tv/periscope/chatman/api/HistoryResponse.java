package tv.periscope.chatman.api;

import defpackage.op;
import java.util.List;

/* compiled from: Twttr */
public class HistoryResponse {
    @op(a = "cursor")
    public final String cursor;
    @op(a = "messages")
    public final List<WireMessage> messages;
    public transient String prevCursor;

    public HistoryResponse(List<WireMessage> list, String str) {
        this.messages = list;
        this.cursor = str;
    }
}
