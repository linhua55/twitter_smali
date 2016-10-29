package com.twitter.android;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;
import com.twitter.library.media.util.p;
import com.twitter.library.network.j;
import com.twitter.library.service.n;
import com.twitter.media.model.MediaType;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.o;
import java.io.File;

/* compiled from: Twttr */
class hl extends AsyncTask<String, Void, File> {
    final /* synthetic */ ImageActivity a;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((String[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((File) obj);
    }

    hl(ImageActivity imageActivity) {
        this.a = imageActivity;
    }

    protected void onPreExecute() {
        this.a.showDialog(1);
    }

    protected File a(String... strArr) {
        File file = null;
        if (this.a.e != null) {
            Context context = this.a;
            o e = PlatformContext.f().e();
            File a = e.a(MediaType.IMAGE.extension);
            if (a != null) {
                try {
                    if (new j(context, this.a.e.toString()).a(new n(a)).a().c().j()) {
                        p pVar = new p(a);
                        pVar.k = this.a.e.getLastPathSegment();
                        pVar.l = this.a.g;
                        file = com.twitter.media.util.j.a(context).b(pVar);
                    } else {
                        e.b(a);
                    }
                } finally {
                    e.b(a);
                }
            }
        }
        return file;
    }

    protected void a(File file) {
        this.a.removeDialog(1);
        if (file != null) {
            this.a.d = file;
            Toast.makeText(this.a, 2131363525, 0).show();
            return;
        }
        Toast.makeText(this.a, 2131363524, 0).show();
    }
}
