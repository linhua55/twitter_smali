package com.twitter.android.widget;

import android.os.Bundle;
import com.twitter.model.core.Tweet;
import java.util.List;

/* compiled from: Twttr */
public class ee extends ea {
    protected ee(Bundle bundle) {
        super(bundle);
    }

    public static ee c(Bundle bundle) {
        return new ee(bundle);
    }

    public boolean E() {
        return this.b.getBoolean("undo", false);
    }

    public boolean F() {
        return this.b.getBoolean("add_main", false);
    }

    public long G() {
        return this.b.getLong("user_id");
    }

    public Tweet H() {
        return (Tweet) this.b.getParcelable("tweet");
    }

    public List<Integer> I() {
        return this.b.getIntegerArrayList("actions");
    }
}
