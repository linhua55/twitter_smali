package com.twitter.model.json.notifications;

import cnf;
import cnh;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.e;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.f;
import java.util.List;
import java.util.Map;

@JsonObject
/* compiled from: Twttr */
public class JsonNotificationSettingsApiResult extends e<cnf> {
    @JsonField(name = {"_smsSettings"})
    public Map<String, String> a;
    @JsonField(name = {"_smsSettingsTemplate"})
    public Map<String, JsonNotificationSettingsTemplate> b;
    @JsonField(name = {"_result"})
    public List<ResultInfo> c;
    @JsonField(name = {"_code"})
    public int d;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class ResultInfo extends b {
        @JsonField
        public String a;
        @JsonField
        public Boolean b;
        @JsonField
        public Integer c;
        @JsonField
        public Integer d;
    }

    public /* synthetic */ f c() {
        return a();
    }

    public cnh a() {
        int i;
        int i2;
        boolean z;
        int i3;
        String str;
        cnh cnh;
        boolean z2 = false;
        if (this.a == null) {
            i = 0;
            i2 = 0;
        } else {
            i = -1;
            i2 = -1;
        }
        if (CollectionUtils.b(this.c)) {
            z = false;
            i3 = i;
            str = null;
        } else {
            ResultInfo resultInfo = (ResultInfo) CollectionUtils.b(this.c);
            if (resultInfo.b != null) {
                z2 = resultInfo.b.booleanValue();
            }
            if (resultInfo.c != null) {
                i2 = resultInfo.c.intValue();
            }
            if (resultInfo.d != null) {
                i = resultInfo.d.intValue();
            }
            z = z2;
            i3 = i;
            str = resultInfo.a;
        }
        if (this.b == null || this.b.get("settings_template") == null) {
            cnh = new cnh();
        } else {
            cnh = ((JsonNotificationSettingsTemplate) this.b.get("settings_template")).a(this.a);
        }
        cnh.c(this.d).a(z).a(i2).b(i3).a(str);
        return cnh;
    }
}
