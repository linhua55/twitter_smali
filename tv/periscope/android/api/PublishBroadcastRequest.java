package tv.periscope.android.api;

import defpackage.op;
import java.util.ArrayList;

/* compiled from: Twttr */
public class PublishBroadcastRequest extends PsRequest {
    @op(a = "broadcast_id")
    public String broadcastId;
    @op(a = "friend_chat")
    public boolean followingOnlyChat;
    @op(a = "has_location")
    public boolean hasLocation;
    @op(a = "lat")
    public float lat;
    @op(a = "lng")
    public float lng;
    @op(a = "locale")
    public String locale;
    @op(a = "lock")
    public ArrayList<String> lockIds;
    @op(a = "status")
    public String title;
}
