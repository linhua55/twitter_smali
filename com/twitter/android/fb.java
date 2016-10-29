package com.twitter.android;

import android.os.AsyncTask;
import com.twitter.library.media.manager.l;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.request.a;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;
import java.io.File;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class fb extends AsyncTask<a, Void, MediaFile> {
    private final WeakReference<EditProfileWithAvatarDrawerActivity> a;
    private final l b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((a[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((MediaFile) obj);
    }

    fb(EditProfileWithAvatarDrawerActivity editProfileWithAvatarDrawerActivity, l lVar) {
        this.a = new WeakReference(editProfileWithAvatarDrawerActivity);
        this.b = lVar;
    }

    protected MediaFile a(a... aVarArr) {
        if (!(a() == null || this.b == null)) {
            a aVar = aVarArr[0];
            if (aVar != null) {
                File e = this.b.e(aVar);
                if (e != null) {
                    return MediaFile.a(e, MediaType.IMAGE);
                }
            }
        }
        return null;
    }

    protected void a(MediaFile mediaFile) {
        EditProfileWithAvatarDrawerActivity a = a();
        if (a != null) {
            a.d = (EditableImage) EditableMedia.a(mediaFile, MediaSource.b);
            a.ad();
        }
    }

    private EditProfileWithAvatarDrawerActivity a() {
        return (EditProfileWithAvatarDrawerActivity) this.a.get();
    }
}
