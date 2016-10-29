package com.caverock.androidsvg;

import android.graphics.Picture;
import android.graphics.drawable.PictureDrawable;
import android.os.AsyncTask;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class ca extends AsyncTask<InputStream, Integer, Picture> {
    final /* synthetic */ SVGImageView a;

    protected /* synthetic */ Object doInBackground(Object... objArr) {
        return a((InputStream[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Picture) obj);
    }

    private ca(SVGImageView sVGImageView) {
        this.a = sVGImageView;
    }

    protected Picture a(InputStream... inputStreamArr) {
        int a;
        try {
            a = SVG.a(inputStreamArr[0]).a();
            try {
                inputStreamArr[0].close();
                return r0;
            } catch (IOException e) {
                return r0;
            }
        } catch (SVGParseException e2) {
            a = "Parse error loading URI: " + e2.getMessage();
            Log.e("SVGImageView", a);
            try {
                inputStreamArr[a].close();
            } catch (IOException e3) {
            }
            return null;
        } finally {
            try {
                inputStreamArr[0].close();
            } catch (IOException e4) {
            }
        }
    }

    protected void a(Picture picture) {
        if (picture != null) {
            this.a.a();
            this.a.setImageDrawable(new PictureDrawable(picture));
        }
    }
}
