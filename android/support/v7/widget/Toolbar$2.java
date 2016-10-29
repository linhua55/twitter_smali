package android.support.v7.widget;

/* compiled from: Twttr */
class Toolbar$2 implements Runnable {
    final /* synthetic */ Toolbar this$0;

    Toolbar$2(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    public void run() {
        this.this$0.showOverflowMenu();
    }
}
