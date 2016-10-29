package com.twitter.android.media.imageeditor;

import android.os.Parcelable;
import com.twitter.android.composer.ComposerType;
import com.twitter.app.common.base.h;

/* compiled from: Twttr */
public class n {
    private final h a;

    public n() {
        this.a = new h();
    }

    public n a(String str) {
        this.a.b("scribe_section", str);
        return this;
    }

    public n a(int i) {
        this.a.a("initial_position", i);
        return this;
    }

    public n b(int i) {
        this.a.a("initial_type", i);
        return this;
    }

    public n a(ComposerType composerType) {
        this.a.a("composer_type", (Parcelable) composerType);
        return this;
    }

    public n a(boolean z) {
        this.a.a("lock_to_initial", z);
        return this;
    }

    public n a(float f) {
        this.a.a("force_crop_ratio", f);
        return this;
    }

    public EditImageFragment a() {
        EditImageFragment editImageFragment = new EditImageFragment();
        editImageFragment.a(this.a.c());
        return editImageFragment;
    }
}
