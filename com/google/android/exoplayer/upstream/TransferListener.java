package com.google.android.exoplayer.upstream;

/* compiled from: Twttr */
public interface TransferListener {
    void onBytesTransferred(int i);

    void onTransferEnd();

    void onTransferStart();
}
