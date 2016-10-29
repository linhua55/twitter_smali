package com.twitter.model.json.notifications;

import bbn;
import cmf;
import cmh;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonNotificationAction extends f<cmf> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cmf a() {
        if (!aj.a(this.a)) {
            return (cmf) new cmh().a(this.a).b(this.b).q();
        }
        bbn.a(new InvalidJsonFormatException("Notification action missing id"));
        return null;
    }
}
