package com.caverock.androidsvg;

import android.graphics.Picture;
import android.graphics.drawable.PictureDrawable;
import android.os.AsyncTask;
import android.util.Log;

/* compiled from: Twttr */
class bz extends AsyncTask<Integer, Integer, Picture> {
    final /* synthetic */ SVGImageView a;

    protected /* synthetic */ Object doInBackground(Object... objArr) {
        return a((Integer[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Picture) obj);
    }

    private bz(SVGImageView sVGImageView) {
        this.a = sVGImageView;
    }

    protected Picture a(Integer... numArr) {
        try {
            return SVG.a(this.a.getContext(), numArr[0].intValue()).a();
        } catch (SVGParseException e) {
            Log.e("SVGImageView", String.format("Error loading resource 0x%x: %s", new Object[]{numArr, e.getMessage()}));
            return null;
        }
    }

    protected void a(Picture picture) {
        if (picture != null) {
            this.a.a();
            this.a.setImageDrawable(new PictureDrawable(picture));
        }
    }
}
