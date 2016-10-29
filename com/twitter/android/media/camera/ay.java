package com.twitter.android.media.camera;

import android.os.AsyncTask;
import com.google.android.exoplayer.upstream.UdpDataSource;

/* compiled from: Twttr */
class ay extends AsyncTask<Void, Void, Boolean> {
    final /* synthetic */ av a;
    private final int b;
    private final boolean c;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Boolean) obj);
    }

    ay(av avVar, int i) {
        this.a = avVar;
        this.b = i;
        this.c = avVar.d() < UdpDataSource.DEFAULT_MAX_PACKET_SIZE;
    }

    protected Boolean a(Void... voidArr) {
        boolean z = true;
        if (this.a.c(this.b)) {
            return Boolean.valueOf(true);
        }
        if (!(this.c && this.a.c(this.b))) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    protected void a(Boolean bool) {
        if (!bool.booleanValue()) {
            av.a(this.a, null);
            if (av.a(this.a) != null) {
                av.a(this.a).a(true);
            }
        } else if (av.a(this.a) != null) {
            av.a(this.a).i();
        }
    }

    protected void onCancelled() {
        new az(this.a, true).executeOnExecutor(SERIAL_EXECUTOR, new Void[0]);
    }
}
