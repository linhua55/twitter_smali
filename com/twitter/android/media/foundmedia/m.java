package com.twitter.android.media.foundmedia;

import android.os.Bundle;
import com.twitter.android.composer.ComposerType;
import com.twitter.app.common.base.g;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class m extends g {
    m(ComposerType composerType) {
        super(new Bundle());
        this.b.putParcelable("composer_type", composerType);
    }

    m(GifCategoriesFragment gifCategoriesFragment) {
        super(gifCategoriesFragment.getArguments());
    }

    ComposerType a() {
        return (ComposerType) e.a((ComposerType) this.b.getParcelable("composer_type"));
    }
}
