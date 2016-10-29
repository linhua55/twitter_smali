package com.google.android.exoplayer.dash.mpd;

import com.google.android.exoplayer.drm.DrmInitData.SchemeInitData;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.UUID;

/* compiled from: Twttr */
public class ContentProtection {
    public final SchemeInitData data;
    public final String schemeUriId;
    public final UUID uuid;

    public ContentProtection(String str, UUID uuid, SchemeInitData schemeInitData) {
        this.schemeUriId = (String) Assertions.checkNotNull(str);
        this.uuid = uuid;
        this.data = schemeInitData;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ContentProtection)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ContentProtection contentProtection = (ContentProtection) obj;
        if (this.schemeUriId.equals(contentProtection.schemeUriId) && Util.areEqual(this.uuid, contentProtection.uuid) && Util.areEqual(this.data, contentProtection.data)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = this.schemeUriId.hashCode() * 37;
        if (this.uuid != null) {
            hashCode = this.uuid.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 37;
        if (this.data != null) {
            i = this.data.hashCode();
        }
        return hashCode + i;
    }
}
