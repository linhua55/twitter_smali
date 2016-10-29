package defpackage;

import android.graphics.Matrix;
import cjw;
import com.twitter.util.math.c;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;
import com.twitter.util.ui.r;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: ckf */
public class ckf {
    public static final d<ckf, ckh> a;
    public final cjw b;
    public final ckj c;

    static {
        a = new cki();
    }

    public ckf(cjw cjw, ckj ckj) {
        this.b = cjw;
        this.c = ckj;
    }

    public Matrix a(float f, c cVar, int i) {
        float f2;
        float f3;
        float f4;
        float f5 = 0.0f;
        float f6 = this.c.b;
        float f7 = (f6 / 2.0f) + this.c.d;
        float f8 = this.c.e + ((this.b.j.b * f6) / 2.0f);
        if (cVar == null) {
            f2 = i % 180 == 0 ? 1.0f : 1.0f / f;
            f3 = 0.0f;
        } else if (i % 180 == 0) {
            f3 = cVar.d;
            f5 = cVar.e / f;
            f2 = cVar.c();
        } else {
            f3 = cVar.d / f;
            f5 = cVar.e;
            f2 = cVar.c() / f;
        }
        switch (r.a(i)) {
            case bdd.AppCompatTheme_controlBackground /*90*/:
                f4 = f7 - f5;
                f5 = ((1.0f / f) - f8) - f3;
                break;
            case 180:
                f4 = ((1.0f / f) - f8) - f5;
                f5 = (1.0f - f7) - f3;
                break;
            case 270:
                f4 = (1.0f - f7) - f5;
                f5 = f8 - f3;
                break;
            default:
                f4 = f8 - f5;
                f5 = f7 - f3;
                break;
        }
        Matrix matrix = new Matrix();
        f6 /= f2;
        matrix.setScale(f6, f6);
        matrix.postRotate(this.c.c + ((float) i));
        matrix.postTranslate(f5 / f2, f4 / f2);
        return matrix;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("sticker_");
        stringBuilder.append(this.b.h);
        stringBuilder.append(':');
        stringBuilder.append(this.c);
        return stringBuilder.toString();
    }

    public JSONObject b(float f, c cVar, int i) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(TtmlNode.ATTR_ID, this.b.h);
        jSONObject.put("annotation_id", this.b.b);
        jSONObject.put("sticker_set_annotation_id", this.b.k);
        jSONObject.put("group_annotation_id", this.b.g);
        jSONObject.put("aspect_ratio", (double) this.b.j.b);
        float[] fArr = new float[9];
        a(f, cVar, i).getValues(fArr);
        jSONObject.put("transform_a", (double) fArr[0]);
        jSONObject.put("transform_b", (double) fArr[3]);
        jSONObject.put("transform_c", (double) fArr[1]);
        jSONObject.put("transform_d", (double) fArr[4]);
        jSONObject.put("transform_tx", (double) fArr[2]);
        jSONObject.put("transform_ty", (double) fArr[5]);
        return jSONObject;
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + this.c.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ckf)) {
            return false;
        }
        ckf ckf = (ckf) obj;
        if (ObjectUtils.a(this.c, ckf.c) && this.b.equals(ckf.b)) {
            return true;
        }
        return false;
    }
}
