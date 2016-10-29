package com.twitter.library.api.upload;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.model.av.n;
import com.twitter.model.core.a;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.l;
import com.twitter.util.ao;
import com.twitter.util.collection.CollectionUtils;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class aa {
    public static final long a;
    private final DraftAttachment b;
    private MediaFile c;
    private long d;
    private long e;

    static {
        a = TimeUnit.MINUTES.toMillis(45);
    }

    public aa(DraftAttachment draftAttachment) {
        this.b = draftAttachment;
    }

    public aa(Context context, DraftAttachment draftAttachment, JSONObject jSONObject) {
        this.b = draftAttachment;
        String optString = jSONObject.optString("preparedMediaUri");
        int optInt = jSONObject.optInt("preparedMediaType", MediaType.a.typeId);
        if (optString != null && optInt != MediaType.a.typeId) {
            this.c = MediaFile.a(context, Uri.parse(optString), MediaType.a(optInt));
            if (this.c != null) {
                this.d = jSONObject.optLong("preparedMediaId", 0);
                this.e = jSONObject.optLong("preparedMediaTimestamp", 0);
            }
        }
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (this.c != null) {
            jSONObject.put("preparedMediaType", this.c.f.typeId);
            jSONObject.put("preparedMediaUri", this.c.a());
            jSONObject.put("preparedMediaId", this.d);
            jSONObject.put("preparedMediaTimestamp", this.e);
        }
        return jSONObject;
    }

    public DraftAttachment b() {
        return this.b;
    }

    public void a(long j, long j2) {
        this.d = j;
        this.e = j2;
    }

    public long c() {
        return this.d;
    }

    public boolean a(long j) {
        return this.d > 0 && j - this.e <= a;
    }

    public void a(MediaFile mediaFile) {
        if (this.c != null) {
            throw new IllegalStateException("the media is already prepared.");
        }
        this.c = mediaFile;
    }

    public boolean d() {
        return this.c == null && !ao.e(this.b.f);
    }

    public MediaFile e() {
        if (this.c != null) {
            return this.c;
        }
        if (ao.e(this.b.f)) {
            EditableMedia a = this.b.a(2);
            if (a != null) {
                return a.k;
            }
        }
        return null;
    }

    public boolean f() {
        if (this.b.h.d() != null) {
            return true;
        }
        EditableMedia a = this.b.a(3);
        if ((a instanceof a) && !TextUtils.isEmpty(((a) a).a())) {
            return true;
        }
        boolean z = (a instanceof EditableImage) && !CollectionUtils.b(((EditableImage) a).h);
        return z;
    }

    public n g() {
        EditableMedia a = this.b.a(3);
        return a instanceof l ? ((l) a).k() : null;
    }

    public void h() {
        if (this.c != null) {
            EditableMedia a = this.b.a(2);
            if (a == null || !a.k.d.equals(this.c.d)) {
                this.c.c();
            }
            this.c = null;
        }
    }
}
