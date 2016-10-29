package com.twitter.android;

import android.net.Uri;
import android.os.AsyncTask;
import android.widget.Toast;
import com.twitter.library.media.manager.l;
import com.twitter.media.request.a;
import java.io.File;

/* compiled from: Twttr */
class aj extends AsyncTask<a, Void, Uri> {
    final /* synthetic */ BaseDMMessageDialog a;

    aj(BaseDMMessageDialog baseDMMessageDialog) {
        this.a = baseDMMessageDialog;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((a[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Uri) obj);
    }

    protected Uri a(a... aVarArr) {
        if (aVarArr == null || aVarArr.length <= 0) {
            return null;
        }
        File e = l.a(this.a.getContext()).e(aVarArr[0]);
        if (e != null) {
            return Uri.fromFile(e);
        }
        return null;
    }

    protected void a(Uri uri) {
        if (uri == null) {
            Toast.makeText(this.a.getContext(), 2131362722, 0).show();
        } else {
            this.a.a(uri);
        }
    }
}
