package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.timeline.NotificationType;
import com.twitter.model.timeline.bk;
import com.twitter.util.aj;
import com.twitter.util.h;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTimelineNotification extends f<bk> {
    @JsonField
    public NotificationType a;
    @JsonField
    public String b;
    @JsonField
    public long c;
    @JsonField
    public long d;

    public /* synthetic */ Object b() {
        return a();
    }

    public bk a() {
        boolean z;
        boolean z2 = true;
        h.b(this.a != NotificationType.UNKNOWN);
        h.b(aj.b(this.b));
        if (this.c >= 0) {
            z = true;
        } else {
            z = false;
        }
        h.b(z);
        if (this.d < 0) {
            z2 = false;
        }
        h.b(z2);
        if (this.a == NotificationType.UNKNOWN || !aj.b(this.b) || this.c < 0 || this.d < 0) {
            return null;
        }
        return new bk(this.a, this.b, this.c, this.d);
    }
}
