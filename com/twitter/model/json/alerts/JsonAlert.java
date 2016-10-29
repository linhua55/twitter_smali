package com.twitter.model.json.alerts;

import cgd;
import cge;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;
import java.util.List;
import tv.periscope.android.library.p;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonAlert extends e<cgd> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField(name = {"alert_senders"})
    public List<Long> d;
    @JsonField
    public String e;
    @JsonField
    public boolean f;

    public /* synthetic */ f c() {
        return a();
    }

    public JsonAlert() {
        this.f = false;
    }

    public cge a() {
        return new cge().a(this.a).a(this.b).a(a(this.c)).a(this.d).b(this.e).a(this.f);
    }

    private static int a(String str) {
        if (str == null) {
            return 0;
        }
        int i = -1;
        switch (str.hashCode()) {
            case -395441577:
                if (str.equals("NATURAL_DISASTER")) {
                    i = 5;
                    break;
                }
                break;
            case 2158134:
                if (str.equals("FIRE")) {
                    i = 3;
                    break;
                }
                break;
            case 14844328:
                if (str.equals("MILITARY_ACTION")) {
                    i = 6;
                    break;
                }
                break;
            case 676431311:
                if (str.equals("TERRORISM")) {
                    i = 2;
                    break;
                }
                break;
            case 869610706:
                if (str.equals("INCIDENT")) {
                    i = 0;
                    break;
                }
                break;
            case 1844494335:
                if (str.equals("PUBLIC_HEALTH_HAZARD")) {
                    i = 4;
                    break;
                }
                break;
            case 1909091593:
                if (str.equals("SEVERE_WEATHER")) {
                    i = 1;
                    break;
                }
                break;
        }
        switch (i) {
            case p.View_android_theme /*0*/:
                return 1;
            case p.View_android_focusable /*1*/:
                return 2;
            case p.View_paddingStart /*2*/:
                return 3;
            case p.View_paddingEnd /*3*/:
                return 4;
            case p.View_theme /*4*/:
                return 5;
            case p.Toolbar_contentInsetStart /*5*/:
                return 6;
            case p.Toolbar_contentInsetEnd /*6*/:
                return 7;
            default:
                return 0;
        }
    }
}
