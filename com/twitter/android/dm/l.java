package com.twitter.android.dm;

import android.os.Bundle;

/* compiled from: Twttr */
public class l extends b {
    protected l(Bundle bundle) {
        super(bundle);
    }

    public static l b(Bundle bundle) {
        return new l(bundle);
    }

    public boolean i() {
        return this.b.getBoolean("is_sharing_external_content");
    }

    public boolean j() {
        return this.b.getBoolean("is_forwarding_message");
    }

    public boolean k() {
        return this.b.getBoolean("should_add_participants_to_existing_conversation");
    }

    public boolean l() {
        return this.b.getBoolean("should_go_back_to_source_activity");
    }
}
