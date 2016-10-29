package com.caverock.androidsvg;

import android.graphics.Picture;
import android.graphics.drawable.PictureDrawable;
import android.os.AsyncTask;
import android.util.Log;
import java.io.FileNotFoundException;

/* compiled from: Twttr */
class by extends AsyncTask<String, Integer, Picture> {
    final /* synthetic */ SVGImageView a;

    protected /* synthetic */ Object doInBackground(Object... objArr) {
        return a((String[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Picture) obj);
    }

    private by(SVGImageView sVGImageView) {
        this.a = sVGImageView;
    }

    protected Picture a(String... strArr) {
        try {
            return SVG.a(this.a.getContext().getAssets(), strArr[0]).a();
        } catch (SVGParseException e) {
            Log.e("SVGImageView", "Error loading file " + strArr + ": " + e.getMessage());
            return null;
        } catch (FileNotFoundException e2) {
            Log.e("SVGImageView", "File not found: " + strArr);
            return null;
        } catch (Throwable e3) {
            Log.e("SVGImageView", "Unable to load asset file: " + strArr, e3);
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
