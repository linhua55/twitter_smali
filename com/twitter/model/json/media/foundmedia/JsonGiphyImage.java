package com.twitter.model.json.media.foundmedia;

import android.util.Pair;
import android.util.SparseArray;
import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.p;
import com.twitter.util.math.Size;
import java.util.Map;

@JsonObject
/* compiled from: Twttr */
public class JsonGiphyImage extends f<p> {
    private static final String[] d;
    private static final String[] e;
    @JsonField(name = {"id"})
    public String a;
    @JsonField(name = {"url"})
    public String b;
    @JsonField(name = {"images"})
    public Map<String, JsonGiphyImageVariant> c;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonGiphyImageVariant extends b {
        @JsonField(name = {"url"})
        public String a;
        @JsonField(name = {"width"})
        public int b;
        @JsonField(name = {"height"})
        public int c;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    static {
        d = new String[]{"fixed_height_still", "fixed_width_still", "fixed_height_small_still", "fixed_width_small_still", "original_still"};
        e = new String[]{"fixed_height_small", "fixed_width_small", "fixed_height_downsampled", "fixed_width_downsampled"};
    }

    public p a() {
        int i = 0;
        if (this.a == null || this.b == null || this.c == null) {
            bbn.a(new InvalidJsonFormatException("JsonGiphyImage has no id, url, or images"));
            return null;
        }
        int i2;
        SparseArray sparseArray = new SparseArray(d.length);
        for (Object obj : d) {
            JsonGiphyImageVariant jsonGiphyImageVariant = (JsonGiphyImageVariant) this.c.get(obj);
            if (jsonGiphyImageVariant != null) {
                int i3 = jsonGiphyImageVariant.b;
                sparseArray.put(i3, new Pair(Size.a(i3, jsonGiphyImageVariant.c), jsonGiphyImageVariant.a));
            }
        }
        if (sparseArray.size() == 0) {
            bbn.a(new InvalidJsonFormatException("JsonGiphyImage has no still image"));
            return null;
        }
        String[] strArr = e;
        i3 = strArr.length;
        i2 = 0;
        String str = null;
        while (i2 < i3) {
            int i4;
            jsonGiphyImageVariant = (JsonGiphyImageVariant) this.c.get(strArr[i2]);
            if (jsonGiphyImageVariant == null || jsonGiphyImageVariant.b <= i) {
                i4 = i;
            } else {
                i = jsonGiphyImageVariant.b;
                str = jsonGiphyImageVariant.a;
                i4 = i;
            }
            i2++;
            i = i4;
        }
        if (str == null) {
            bbn.a(new InvalidJsonFormatException("JsonGiphyImage has no thumbnail"));
            return null;
        }
        JsonGiphyImageVariant jsonGiphyImageVariant2 = (JsonGiphyImageVariant) this.c.get("original");
        if (jsonGiphyImageVariant2 == null) {
            bbn.a(new InvalidJsonFormatException("JsonGiphyImage has original image"));
            return null;
        }
        return new p(this.a, this.b, jsonGiphyImageVariant2.a, str, Size.a(jsonGiphyImageVariant2.b, jsonGiphyImageVariant2.c), sparseArray);
    }
}
