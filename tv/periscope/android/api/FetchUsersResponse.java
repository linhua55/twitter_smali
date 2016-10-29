package tv.periscope.android.api;

import java.util.List;

/* compiled from: Twttr */
public class FetchUsersResponse {
    public final String ownerId;
    public final List<PsUser> users;

    public FetchUsersResponse(String str, List<PsUser> list) {
        this.ownerId = str;
        this.users = list;
    }
}
