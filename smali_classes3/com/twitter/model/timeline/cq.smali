.class public Lcom/twitter/model/timeline/cq;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(I)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    packed-switch p0, :pswitch_data_0

    .line 96
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeline type %d has no matching TweetGroupType value"

    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    move v0, v1

    .line 93
    :goto_0
    :pswitch_2
    return v0

    .line 60
    :pswitch_3
    const/16 v0, 0x1c

    goto :goto_0

    .line 63
    :pswitch_4
    const/16 v0, 0x1b

    goto :goto_0

    .line 66
    :pswitch_5
    const/16 v0, 0x1e

    goto :goto_0

    .line 69
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 72
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    .line 75
    :pswitch_8
    const/16 v0, 0x11

    goto :goto_0

    .line 78
    :pswitch_9
    const/4 v0, 0x5

    goto :goto_0

    .line 81
    :pswitch_a
    const/16 v0, 0x17

    goto :goto_0

    .line 84
    :pswitch_b
    const/16 v0, 0x18

    goto :goto_0

    .line 87
    :pswitch_c
    const/4 v0, 0x3

    goto :goto_0

    .line 90
    :pswitch_d
    const/16 v0, 0x25

    goto :goto_0

    .line 93
    :pswitch_e
    const/16 v0, 0x9

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 107
    packed-switch p0, :pswitch_data_0

    .line 128
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 109
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 113
    :pswitch_2
    const/16 v0, 0xf

    goto :goto_0

    .line 121
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 125
    :pswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static c(I)Z
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
