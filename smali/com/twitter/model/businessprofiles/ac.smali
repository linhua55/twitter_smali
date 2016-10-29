.class public Lcom/twitter/model/businessprofiles/ac;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const-string/jumbo v0, "none"

    .line 37
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 37
    const-string/jumbo v0, "none"

    goto :goto_0

    .line 29
    :sswitch_0
    const-string/jumbo v1, "enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "disabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 31
    :pswitch_0
    const-string/jumbo v0, "enabled"

    goto :goto_0

    .line 34
    :pswitch_1
    const-string/jumbo v0, "disabled"

    goto :goto_0

    .line 29
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ff074bf -> :sswitch_0
        0x10263a7c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
