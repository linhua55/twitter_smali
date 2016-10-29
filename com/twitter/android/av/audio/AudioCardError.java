package com.twitter.android.av.audio;

import android.content.res.Resources;
import com.twitter.model.av.c;
import com.twitter.util.aj;

/* compiled from: Twttr */
public enum AudioCardError {
    FORBIDDEN_DEFAULT(403, null),
    FORBIDDEN_UNKNOWN(403, "unknown"),
    FORBIDDEN_RESTRICTED(403, "restricted"),
    FORBIDDEN_GEOBLOCKED(403, "geoblocked"),
    FORBIDDEN_NOT_SUPPORTED(403, "not supported"),
    NOT_FOUND(404, null),
    INTERNAL_ERROR(500, null),
    UNKNOWN(1, null);
    
    public final String reason;
    public final int statusCode;

    private AudioCardError(int i, String str) {
        this.statusCode = i;
        this.reason = str;
    }

    public static AudioCardError a(c cVar) {
        return a(cVar.b, cVar.c);
    }

    public static AudioCardError a(int i, String str) {
        AudioCardError audioCardError;
        int i2 = 0;
        AudioCardError[] values = values();
        for (AudioCardError audioCardError2 : values) {
            if (audioCardError2.statusCode == i && aj.b(audioCardError2.reason, str)) {
                return audioCardError2;
            }
        }
        int length = values.length;
        while (i2 < length) {
            audioCardError2 = values[i2];
            if (audioCardError2.statusCode == i && audioCardError2.reason == null) {
                return audioCardError2;
            }
            i2++;
        }
        return UNKNOWN;
    }

    String a(Resources resources, i iVar) {
        int a = iVar.a(this);
        int b = iVar.b(this);
        if (a != 0 && b != 0) {
            return resources.getString(a) + ": " + resources.getString(b);
        }
        if (a != 0 && b == 0) {
            return resources.getString(a);
        }
        if (a != 0 || b == 0) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        return resources.getString(b);
    }
}
