package com.twitter.media.service.core;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class b extends Handler {
    private final Context a;

    b(Context context) {
        this.a = context;
    }

    public void handleMessage(Message message) {
        Message obtain = Message.obtain(null, message.what, message.arg1, message.arg2, null);
        Bundle data;
        switch (message.what) {
            case WireMessage.WIRE_CHAT /*1*/:
                data = message.getData();
                if (data != null) {
                    try {
                        data.setClassLoader(getClass().getClassLoader());
                        MediaServiceTask mediaServiceTask = (MediaServiceTask) data.getParcelable("parcel");
                        if (mediaServiceTask != null) {
                            mediaServiceTask.a(this.a);
                            Bundle bundle = new Bundle();
                            bundle.putParcelable("parcel", mediaServiceTask);
                            obtain.setData(bundle);
                            break;
                        }
                    } catch (Exception e) {
                        break;
                    }
                }
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (MediaService.a != null) {
                    data = new Bundle();
                    data.putString("crash", MediaService.a);
                    obtain.setData(data);
                    break;
                }
                break;
        }
        try {
            message.replyTo.send(obtain);
        } catch (Exception e2) {
        }
    }
}
