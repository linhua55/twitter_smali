package com.twitter.model.json.notifications;

import cmp;
import cnh;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonNotificationSettingsTemplate extends b {
    @JsonField
    public Map<String, String> a;
    @JsonField
    public Map<String, JsonControlType> b;
    @JsonField
    public List<JsonNotificationSetting> c;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonControlType extends b {
        @JsonField(name = {"default"})
        public String a;
        @JsonField
        public List<Map<String, String>> b;
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonNotificationSetting extends b {
        @JsonField
        public String a;
        @JsonField
        public String b;
        @JsonField
        public String c;
        @JsonField(name = {"description"})
        public Map<String, String> d;
    }

    public cnh a(Map<String, String> map) {
        cnh cnh = new cnh();
        n d = n.d();
        if (!(this.b == null || this.c == null)) {
            for (JsonNotificationSetting jsonNotificationSetting : this.c) {
                JsonControlType jsonControlType = (JsonControlType) this.b.get(jsonNotificationSetting.a);
                if (!(jsonControlType == null || jsonControlType.b == null)) {
                    String[] strArr = new String[jsonControlType.b.size()];
                    String[] strArr2 = new String[strArr.length];
                    String[] strArr3 = new String[strArr.length];
                    for (int i = 0; i < jsonControlType.b.size(); i++) {
                        strArr[i] = (String) CollectionUtils.b(((Map) jsonControlType.b.get(i)).keySet());
                        strArr2[i] = (String) ((Map) jsonControlType.b.get(i)).get(strArr[i]);
                        strArr3[i] = (String) jsonNotificationSetting.d.get(strArr[i]);
                    }
                    cmp c = new cmp().a(jsonNotificationSetting.b).b(jsonNotificationSetting.c).a(strArr).b(strArr2).c(strArr3);
                    if (map == null || map.get(jsonNotificationSetting.b) == null) {
                        c.a(true);
                    } else {
                        c.c((String) map.get(jsonNotificationSetting.b));
                    }
                    d.c(c.r());
                }
            }
            List list = (List) d.q();
            if (list.size() == this.c.size()) {
                cnh.a(list);
            }
        }
        return cnh;
    }
}
