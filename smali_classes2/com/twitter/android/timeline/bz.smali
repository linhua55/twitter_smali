.class public final Lcom/twitter/android/timeline/bz;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(ILcom/twitter/android/widget/NewItemBannerView;Lcom/twitter/android/timeline/by;Lcom/twitter/app/common/inject/t;)Lcom/twitter/android/timeline/bx;
    .locals 3

    .prologue
    .line 48
    packed-switch p0, :pswitch_data_0

    .line 80
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid timeline type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :pswitch_1
    sget-object v0, Lcom/twitter/android/timeline/w;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {p3, v0}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/NewTweetsBannerState;

    .line 53
    new-instance v1, Lcom/twitter/android/timeline/w;

    invoke-direct {v1, p1, p2, v0}, Lcom/twitter/android/timeline/w;-><init>(Lcom/twitter/android/widget/NewItemBannerView;Lcom/twitter/android/timeline/by;Lcom/twitter/android/timeline/NewTweetsBannerState;)V

    move-object v0, v1

    .line 83
    :goto_0
    return-object v0

    .line 57
    :pswitch_2
    sget-object v0, Lcom/twitter/android/timeline/e;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {p3, v0}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/NewTweetsBannerState;

    .line 59
    new-instance v1, Lcom/twitter/android/livevideo/landing/n;

    invoke-direct {v1, p1, p2, v0}, Lcom/twitter/android/livevideo/landing/n;-><init>(Lcom/twitter/android/widget/NewItemBannerView;Lcom/twitter/android/timeline/by;Lcom/twitter/android/timeline/NewTweetsBannerState;)V

    move-object v0, v1

    .line 60
    goto :goto_0

    .line 75
    :pswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/twitter/android/timeline/bx;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " implementation for timeline type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
