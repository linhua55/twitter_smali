package com.twitter.library.media.util.transcode;

/* compiled from: Twttr */
abstract class j implements Runnable {
    private TranscoderException a;
    final /* synthetic */ d b;

    abstract void a() throws TranscoderException;

    private j(d dVar) {
        this.b = dVar;
    }

    public void run() {
        try {
            a();
        } catch (TranscoderException e) {
            this.a = e;
            this.b.c();
        } catch (Throwable th) {
            this.a = new TranscoderException(true, "transcoder error", th);
            this.b.c();
        }
    }

    void b() throws TranscoderException {
        if (this.a != null) {
            throw this.a;
        }
    }
}
