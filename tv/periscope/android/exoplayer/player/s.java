package tv.periscope.android.exoplayer.player;

import android.graphics.Point;
import android.view.TextureView;
import com.google.android.exoplayer.metadata.id3.Id3Frame;
import com.google.android.exoplayer.metadata.id3.TextInformationFrame;
import java.util.List;

/* compiled from: Twttr */
public class s implements g, v {
    private final t a;
    private boolean b;
    private double c;

    public s(t tVar) {
        this.b = false;
        this.c = 0.0d;
        this.a = tVar;
    }

    public void a(List<Id3Frame> list) {
        for (Id3Frame id3Frame : list) {
            if (id3Frame instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) id3Frame;
                if ("TKEY".equals(textInformationFrame.id)) {
                    this.b = true;
                    this.c = u.a(textInformationFrame.description);
                    a();
                    return;
                }
            }
        }
    }

    public void a() {
        this.a.a((v) this);
        this.a.a(this.c);
    }

    public void a(TextureView textureView, Point point) {
        int i = point.x;
        int i2 = point.y;
        if (i > 0 && i2 > 0) {
            double d = this.c;
            if (!this.b) {
                d = 0.0d;
            }
            u.a(textureView, d, i, i2);
        }
    }
}
