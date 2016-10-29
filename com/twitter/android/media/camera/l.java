package com.twitter.android.media.camera;

import android.net.Uri;
import android.os.AsyncTask;
import android.support.v4.app.FragmentActivity;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.SegmentedVideoFile;

/* compiled from: Twttr */
class l extends AsyncTask<Void, Void, SegmentedVideoFile> {
    final /* synthetic */ CameraFragment a;
    private final Uri b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((SegmentedVideoFile) obj);
    }

    l(CameraFragment cameraFragment, Uri uri) {
        this.a = cameraFragment;
        this.b = uri;
    }

    protected SegmentedVideoFile a(Void... voidArr) {
        FragmentActivity activity = this.a.getActivity();
        if (activity == null) {
            return null;
        }
        SegmentedVideoFile segmentedVideoFile = (SegmentedVideoFile) MediaFile.a(activity, this.b, MediaType.f);
        if (segmentedVideoFile == null || segmentedVideoFile.h.isEmpty()) {
            segmentedVideoFile = null;
        }
        return segmentedVideoFile;
    }

    protected void a(SegmentedVideoFile segmentedVideoFile) {
        if (segmentedVideoFile != null) {
            CameraFragment.j(this.a).a(segmentedVideoFile);
            this.a.a.c(segmentedVideoFile.g);
            return;
        }
        this.a.a.a(false);
    }
}
