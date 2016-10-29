package com.twitter.android.media.camera;

import android.os.AsyncTask;
import com.twitter.media.model.VideoFile;
import com.twitter.util.h;

/* compiled from: Twttr */
class ax extends AsyncTask<Void, Void, VideoFile> {
    final /* synthetic */ av a;

    private ax(av avVar) {
        this.a = avVar;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((VideoFile) obj);
    }

    protected VideoFile a(Void... voidArr) {
        h.c();
        return VideoFile.a(av.b(this.a));
    }

    protected void a(VideoFile videoFile) {
        if (av.a(this.a) != null) {
            if (videoFile == null) {
                av.a(this.a).j();
            } else {
                av.a(this.a).a(videoFile);
            }
            av.a(this.a, false);
        }
    }
}
