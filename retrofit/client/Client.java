package retrofit.client;

import java.io.IOException;

/* compiled from: Twttr */
public interface Client {

    /* compiled from: Twttr */
    public interface Provider {
        Client get();
    }

    Response execute(Request request) throws IOException;
}
