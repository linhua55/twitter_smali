package tv.periscope.chatman.api;

import defpackage.op;

/* compiled from: Twttr */
public class ChatMessage implements Kind {
    @op(a = "body")
    public final String body;
    @op(a = "room")
    public final String room;
    @op(a = "sender")
    public final Sender sender;
    @op(a = "timestamp")
    public final long timestamp;

    public ChatMessage(String str, String str2) {
        this.sender = null;
        this.timestamp = 0;
        this.body = str2;
        this.room = str;
    }

    public int kind() {
        return 1;
    }

    public String toString() {
        return "Chat{body=" + this.body + ", timestamp=" + this.timestamp + "}";
    }
}
