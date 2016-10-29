package com.twitter.android.widget;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import bbn;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.AppConfig;
import com.twitter.media.util.r;

/* compiled from: Twttr */
class bd implements LoaderCallbacks<Cursor> {
    static final /* synthetic */ boolean a;
    private GalleryGridFragment b;

    static {
        a = !GalleryGridFragment.class.desiredAssertionStatus();
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    bd(GalleryGridFragment galleryGridFragment) {
        this.b = galleryGridFragment;
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                if (a || this.b != null) {
                    return new be(this.b.getActivity().getApplicationContext(), true, r.a());
                }
                throw new AssertionError();
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (a || this.b != null) {
                    return new be(this.b.getActivity().getApplicationContext(), false, false);
                }
                throw new AssertionError();
            default:
                return null;
        }
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (this.b == null) {
            String str;
            if (loader instanceof be) {
                be beVar = (be) loader;
                String str2 = "delivers data to destroyed GalleryGridFragment: id=" + loader.getId() + " ListenerUnregistered=" + beVar.b;
                bbn.a(new IllegalStateException(str2, beVar.a));
                str = str2;
            } else {
                str = "delivers data to destroyed GalleryGridFragment: id=" + loader.getId();
                bbn.a(new IllegalStateException(str));
            }
            if (AppConfig.m().a()) {
                throw new IllegalStateException(str);
            }
            return;
        }
        this.b.a(loader, cursor);
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        if (this.b != null) {
            this.b.b();
        }
    }

    void a() {
        this.b = null;
    }
}
