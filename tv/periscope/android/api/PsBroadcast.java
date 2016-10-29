package tv.periscope.android.api;

import com.twitter.android.mx;
import dcg;
import ddg;
import defpackage.op;
import java.util.ArrayList;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;
import tv.periscope.model.BroadcastState;
import tv.periscope.model.p;
import tv.periscope.model.z;

/* compiled from: Twttr */
class PsBroadcast {
    @op(a = "available_for_replay")
    public boolean availableForReplay;
    @op(a = "state")
    public String broadcastState;
    @op(a = "city")
    public String city;
    @op(a = "class_name")
    public String className;
    @op(a = "country")
    public String country;
    @op(a = "country_state")
    public String countryState;
    @op(a = "created_at")
    public String createdAt;
    @op(a = "end")
    public String endTime;
    @op(a = "expiration")
    public int expirationTime;
    @op(a = "featured")
    public boolean featured;
    @op(a = "featured_category")
    public String featuredCategory;
    @op(a = "featured_category_color")
    public String featuredCategoryColor;
    @op(a = "featured_reason")
    public String featuredReason;
    @op(a = "has_location")
    public boolean hasLocation;
    @op(a = "heart_theme")
    public ArrayList<String> heartThemes;
    @op(a = "height")
    public int height;
    @op(a = "id")
    public String id;
    @op(a = "image_url")
    public String imageUrl;
    @op(a = "image_url_small")
    public String imageUrlSmall;
    @op(a = "ip_lat")
    public double ipLat;
    @op(a = "ip_lng")
    public double ipLong;
    @op(a = "is_locked")
    public boolean isLocked;
    @op(a = "is_trusted")
    public boolean isTrusted;
    @op(a = "n_watching")
    public int numWatching;
    @op(a = "n_web_watching")
    public int numWebWatching;
    @op(a = "ping")
    public String pingTime;
    @op(a = "profile_image_url")
    public String profileImageUrl;
    @op(a = "share_display_names")
    public ArrayList<String> shareUserDisplayNames;
    @op(a = "share_user_ids")
    public ArrayList<String> shareUserIds;
    @op(a = "sort_score")
    public long sortScore;
    @op(a = "start")
    public String startTime;
    @op(a = "timedout")
    public String timedOutTime;
    @op(a = "status")
    public String title;
    @op(a = "twitter_username")
    public String twitterUsername;
    @op(a = "updated_at")
    public String updatedAt;
    @op(a = "user_display_name")
    public String userDisplayName;
    @op(a = "user_id")
    public String userId;
    @op(a = "width")
    public int width;

    PsBroadcast() {
    }

    private long parseTime(String str) {
        if (ddg.b(str)) {
            return dcg.a(str);
        }
        return 0;
    }

    public p create() {
        p a = p.z().a(this.id).b(this.title).a(z.a(this.country, this.city, this.countryState)).c(parseTime(this.createdAt)).a(this.featured).c(this.featuredCategory).d(this.featuredCategoryColor).e(this.featuredReason).d(this.sortScore).e(parseTime(this.startTime)).a(this.ipLat).b(this.ipLong).f(this.userId).b(this.isLocked).g(this.imageUrl).h(this.imageUrlSmall).i(this.userDisplayName).j(this.profileImageUrl).k(this.twitterUsername).c(this.hasLocation).a(this.shareUserIds).b(this.shareUserDisplayNames).c(this.heartThemes).b(parseTime(this.pingTime)).a(parseTime(this.timedOutTime)).a();
        String str = this.broadcastState;
        Object obj = -1;
        switch (str.hashCode()) {
            case -2026200673:
                if (str.equals("RUNNING")) {
                    obj = 2;
                    break;
                }
                break;
            case -1466757626:
                if (str.equals("TIMED_OUT")) {
                    obj = 3;
                    break;
                }
                break;
            case -1391247659:
                if (str.equals("NOT_STARTED")) {
                    obj = null;
                    break;
                }
                break;
            case -60968498:
                if (str.equals("PUBLISHED")) {
                    obj = 1;
                    break;
                }
                break;
            case 66114202:
                if (str.equals("ENDED")) {
                    obj = 4;
                    break;
                }
                break;
        }
        switch (obj) {
            case mx.View_android_theme /*0*/:
                a.a(BroadcastState.a);
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                a.a(BroadcastState.b);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                a.a(BroadcastState.c);
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                a.a(BroadcastState.d);
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a.a(BroadcastState.e);
                break;
        }
        a.a(parseTime(this.endTime));
        a.b(this.numWatching + this.numWebWatching);
        a.a(this.availableForReplay);
        a.b(this.isTrusted);
        a.a(this.expirationTime);
        return a;
    }
}
