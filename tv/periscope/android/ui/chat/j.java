package tv.periscope.android.ui.chat;

import tv.periscope.model.chat.Message;

/* compiled from: Twttr */
public class j {
    public final Message a;
    public final long b;
    private float c;
    private long d;
    private int e;

    public j(Message message, long j) {
        this.a = message;
        this.b = j;
        this.c = 1.0f;
        this.d = 4500;
    }

    public float a() {
        return this.c;
    }

    public void a(float f) {
        this.c = f;
    }

    public long b() {
        return this.d;
    }

    public void a(long j) {
        this.d = j;
    }

    public int c() {
        return this.e;
    }

    public void a(int i) {
        this.e = i;
    }
}
