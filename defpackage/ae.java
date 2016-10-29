package defpackage;

import java.io.IOException;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: ae */
class ae {
    ae() {
    }

    public ad a(JSONObject jSONObject) throws IOException {
        if (jSONObject == null) {
            return null;
        }
        return new ad(jSONObject.optString("url", null), jSONObject.optString("version_string", null), jSONObject.optString("display_version", null), jSONObject.optString("build_version", null), jSONObject.optString("identifier", null), jSONObject.optString("instance_identifier", null));
    }
}
