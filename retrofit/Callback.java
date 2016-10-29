package retrofit;

import retrofit.client.Response;

/* compiled from: Twttr */
public interface Callback<T> {
    void failure(RetrofitError retrofitError);

    void success(T t, Response response);
}
