package tv.periscope.chatman.api;

import defpackage.op;

/* compiled from: Twttr */
public class Occupant {
    @op(a = "display_name")
    public final String displayName;
    @op(a = "participant_index")
    public final int participantIndex;
    @op(a = "profile_image_url")
    public final String profileImageUrl;
    @op(a = "user_id")
    public final String userId;
    @op(a = "user_name")
    public final String username;

    public Occupant(String str, String str2, String str3, String str4, int i) {
        this.userId = str;
        this.displayName = str2;
        this.username = str3;
        this.profileImageUrl = str4;
        this.participantIndex = i;
    }
}
