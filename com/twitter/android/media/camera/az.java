package com.twitter.android.media.camera;

import android.os.AsyncTask;
import com.google.android.exoplayer.upstream.UdpDataSource;
import com.twitter.media.model.VideoFile;

/* compiled from: Twttr */
class az extends AsyncTask<Void, Void, VideoFile> {
    final /* synthetic */ av a;
    private final boolean b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((VideoFile) obj);
    }

    az(av avVar, boolean z) {
        this.a = avVar;
        boolean z2 = z || avVar.d() < UdpDataSource.DEFAULT_MAX_PACKET_SIZE;
        this.b = z2;
    }

    protected VideoFile a(Void... voidArr) {
        return this.a.e();
    }

    protected void a(VideoFile videoFile) {
        if (av.a(this.a) != null) {
            if (videoFile != null) {
                av.a(this.a).a(videoFile);
            } else if (this.b) {
                av.a(this.a).j();
            } else {
                av.a(this.a).a(false);
            }
            av.a(this.a, false);
        }
    }
}
