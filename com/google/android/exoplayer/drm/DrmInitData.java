package com.google.android.exoplayer.drm;

import com.google.android.exoplayer.util.Assertions;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* compiled from: Twttr */
public interface DrmInitData {

    /* compiled from: Twttr */
    public final class Mapped implements DrmInitData {
        private final Map<UUID, SchemeInitData> schemeData;

        public Mapped() {
            this.schemeData = new HashMap();
        }

        public SchemeInitData get(UUID uuid) {
            return (SchemeInitData) this.schemeData.get(uuid);
        }

        public void put(UUID uuid, SchemeInitData schemeInitData) {
            this.schemeData.put(uuid, schemeInitData);
        }
    }

    /* compiled from: Twttr */
    public final class SchemeInitData {
        public final byte[] data;
        public final String mimeType;

        public SchemeInitData(String str, byte[] bArr) {
            this.mimeType = (String) Assertions.checkNotNull(str);
            this.data = (byte[]) Assertions.checkNotNull(bArr);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof SchemeInitData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeInitData schemeInitData = (SchemeInitData) obj;
            if (this.mimeType.equals(schemeInitData.mimeType) && Arrays.equals(this.data, schemeInitData.data)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.mimeType.hashCode() + (Arrays.hashCode(this.data) * 31);
        }
    }

    /* compiled from: Twttr */
    public final class Universal implements DrmInitData {
        private SchemeInitData data;

        public Universal(SchemeInitData schemeInitData) {
            this.data = schemeInitData;
        }

        public SchemeInitData get(UUID uuid) {
            return this.data;
        }
    }

    SchemeInitData get(UUID uuid);
}
