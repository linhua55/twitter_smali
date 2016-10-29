package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class AccessChatRequest extends PsRequest {
    @op(a = "chat_token")
    public String chatToken;
    @op(a = "viewer_moderation")
    public boolean viewerModeration;
}
