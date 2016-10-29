package tv.periscope.chatman.api;

import defpackage.op;

/* compiled from: Twttr */
public class Sender {
    @op(a = "display_name")
    public final String displayName;
    @op(a = "participant_index")
    public final Integer participantIndex;
    @op(a = "profile_image_url")
    public final String profileImageUrl;
    @op(a = "user_id")
    public final String userId;
    @op(a = "username")
    public final String username;

    public Sender(String str, String str2, String str3, String str4, Integer num) {
        this.userId = str;
        this.username = str2;
        this.displayName = str3;
        this.profileImageUrl = str4;
        this.participantIndex = num;
    }
}
