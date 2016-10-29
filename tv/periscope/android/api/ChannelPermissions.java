package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class ChannelPermissions {
    @op(a = "cm")
    int chatmanOpts;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (this.chatmanOpts != ((ChannelPermissions) obj).chatmanOpts) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.chatmanOpts;
    }
}
