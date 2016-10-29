package okio;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;

/* compiled from: Twttr */
final class t extends a {
    final /* synthetic */ Socket a;

    t(Socket socket) {
        this.a = socket;
    }

    protected IOException newTimeoutException(IOException iOException) {
        IOException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    protected void timedOut() {
        try {
            this.a.close();
        } catch (Throwable e) {
            q.a.log(Level.WARNING, "Failed to close timed out socket " + this.a, e);
        } catch (Throwable e2) {
            if (e2.getCause() == null || e2.getMessage() == null || !e2.getMessage().contains("getsockname failed")) {
                throw e2;
            }
            q.a.log(Level.WARNING, "Failed to close timed out socket " + this.a, e2);
        }
    }
}
