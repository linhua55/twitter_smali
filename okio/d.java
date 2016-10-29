package okio;

/* compiled from: Twttr */
final class d extends Thread {
    public d() {
        super("Okio Watchdog");
        setDaemon(true);
    }

    public void run() {
        while (true) {
            try {
                a access$000 = a.awaitTimeout();
                if (access$000 != null) {
                    access$000.timedOut();
                }
            } catch (InterruptedException e) {
            }
        }
    }
}
