package tv.periscope.android.exoplayer.player;

import android.view.Surface;
import com.google.android.exoplayer.TimeRange;
import com.google.android.exoplayer.chunk.Format;

/* compiled from: Twttr */
public interface h {
    void a(int i, long j);

    void a(int i, long j, int i2, int i3, Format format, long j2, long j3);

    void a(int i, long j, int i2, int i3, Format format, long j2, long j3, long j4, long j5);

    void a(int i, long j, long j2);

    void a(int i, TimeRange timeRange);

    void a(Surface surface);

    void a(Format format, int i, long j);

    void a(String str, long j, long j2);

    void b(Format format, int i, long j);
}
