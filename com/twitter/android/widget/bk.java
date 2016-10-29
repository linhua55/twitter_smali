package com.twitter.android.widget;

import android.support.annotation.IdRes;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.media.selection.MediaAttachmentController;

/* compiled from: Twttr */
public class bk implements bj {
    private final GalleryGridFragment c;
    private final FragmentActivity d;

    public bk(FragmentActivity fragmentActivity, boolean z, MediaAttachmentController mediaAttachmentController, @IdRes int i, bc bcVar) {
        this(fragmentActivity, z, mediaAttachmentController, i, bcVar, a);
    }

    public bk(FragmentActivity fragmentActivity, boolean z, MediaAttachmentController mediaAttachmentController, @IdRes int i, bc bcVar, boolean z2) {
        this(fragmentActivity, z, mediaAttachmentController, i, bcVar, z2 ? a : b);
    }

    public bk(FragmentActivity fragmentActivity, boolean z, MediaAttachmentController mediaAttachmentController, @IdRes int i, bc bcVar, int[] iArr) {
        this(fragmentActivity, z, i, bcVar, bf.a(iArr, fragmentActivity, mediaAttachmentController, bcVar));
    }

    public bk(FragmentActivity fragmentActivity, boolean z, @IdRes int i, bc bcVar, View[] viewArr) {
        this.d = fragmentActivity;
        this.c = a(i, z);
        this.c.a(viewArr);
        if (bcVar != null) {
            this.c.a(bcVar);
        }
    }

    public void d() {
        this.c.c();
    }

    public void a(ViewGroup viewGroup) {
        viewGroup.addView(this.c.a(viewGroup), 0);
    }

    GalleryGridFragment a(@IdRes int i, boolean z) {
        GalleryGridFragment galleryGridFragment;
        if (z) {
            galleryGridFragment = (GalleryGridFragment) this.d.getSupportFragmentManager().findFragmentByTag("gallery");
        } else {
            galleryGridFragment = null;
        }
        return galleryGridFragment == null ? a(i) : galleryGridFragment;
    }

    GalleryGridFragment a(@IdRes int i) {
        Fragment b = GalleryGridFragment.b(2131558816, this.d.getResources().getDimensionPixelSize(2131689818), false, 0, true);
        FragmentManager supportFragmentManager = this.d.getSupportFragmentManager();
        supportFragmentManager.beginTransaction().add(i, b, "gallery").commit();
        supportFragmentManager.executePendingTransactions();
        return b;
    }
}
