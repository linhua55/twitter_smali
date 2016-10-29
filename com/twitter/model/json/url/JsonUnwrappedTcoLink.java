package com.twitter.model.json.url;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.url.UnwrappedTcoLinkResponse;
import com.twitter.model.url.UnwrappedTcoLinkResponse.ResolutionStatus;
import com.twitter.util.collection.ImmutableList;
import java.util.List;
import tv.periscope.android.library.p;

@JsonObject
/* compiled from: Twttr */
public class JsonUnwrappedTcoLink extends f<UnwrappedTcoLinkResponse> {
    @JsonField(name = {"tco"})
    public String a;
    @JsonField(name = {"first_url"})
    public String b;
    @JsonField(name = {"resolution"})
    public List<String> c;
    @JsonField(name = {"status"})
    public String d;
    @JsonField(name = {"ttl_msec"})
    public Long e;

    public /* synthetic */ Object b() {
        return a();
    }

    public UnwrappedTcoLinkResponse a() {
        ResolutionStatus resolutionStatus;
        if (this.d != null) {
            String str = this.d;
            Object obj = -1;
            switch (str.hashCode()) {
                case -840246874:
                    if (str.equals("unsafe")) {
                        obj = 2;
                        break;
                    }
                    break;
                case -788838381:
                    if (str.equals("transient_error")) {
                        obj = 3;
                        break;
                    }
                    break;
                case 111972348:
                    if (str.equals("valid")) {
                        obj = null;
                        break;
                    }
                    break;
                case 1959784951:
                    if (str.equals("invalid")) {
                        obj = 1;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case p.View_android_theme /*0*/:
                    resolutionStatus = ResolutionStatus.VALID;
                    break;
                case p.View_android_focusable /*1*/:
                    resolutionStatus = ResolutionStatus.INVALID;
                    break;
                case p.View_paddingStart /*2*/:
                    resolutionStatus = ResolutionStatus.UNSAFE;
                    break;
                case p.View_paddingEnd /*3*/:
                    resolutionStatus = ResolutionStatus.TRANSIENT_ERROR;
                    break;
                default:
                    resolutionStatus = ResolutionStatus.UNKNOWN;
                    break;
            }
        }
        resolutionStatus = ResolutionStatus.UNKNOWN;
        return new UnwrappedTcoLinkResponse(this.a, resolutionStatus, this.b, ImmutableList.a(this.c), this.e);
    }
}
