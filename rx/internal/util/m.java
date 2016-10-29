package rx.internal.util;

/* compiled from: Twttr */
class m implements Runnable {
    final /* synthetic */ l a;

    m(l lVar) {
        this.a = lVar;
    }

    public void run() {
        int i = 0;
        int size = this.a.a.size();
        if (size < this.a.b) {
            size = this.a.c - size;
            while (i < size) {
                this.a.a.add(this.a.c());
                i++;
            }
        } else if (size > this.a.c) {
            size -= this.a.c;
            while (i < size) {
                this.a.a.poll();
                i++;
            }
        }
    }
}
