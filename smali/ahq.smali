.class public Lahq;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;
    .locals 10

    .prologue
    const/4 v1, 0x2

    .line 17
    new-instance v4, Lcom/twitter/library/scribe/s;

    invoke-direct {v4}, Lcom/twitter/library/scribe/s;-><init>()V

    .line 19
    const-wide/16 v2, -0x1

    .line 20
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v5, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->c:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-ne v0, v5, :cond_2

    move-object v0, p0

    .line 21
    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    .line 22
    sget-object v5, Lahr;->a:[I

    iget-object v6, v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    invoke-virtual {v6}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 40
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown video type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lbix;->a(Ljava/lang/Throwable;)V

    move v0, v1

    :goto_0
    move-wide v8, v2

    move v2, v0

    move-wide v0, v8

    .line 53
    :goto_1
    invoke-virtual {v4, v2}, Lcom/twitter/library/scribe/s;->a(I)Lcom/twitter/library/scribe/s;

    .line 54
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 55
    invoke-virtual {v4, v0, v1}, Lcom/twitter/library/scribe/s;->a(J)Lcom/twitter/library/scribe/s;

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 59
    if-ltz v0, :cond_1

    .line 60
    invoke-virtual {v4, v0}, Lcom/twitter/library/scribe/s;->b(I)Lcom/twitter/library/scribe/s;

    .line 61
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/twitter/library/scribe/s;->c(I)Lcom/twitter/library/scribe/s;

    .line 64
    :cond_1
    invoke-virtual {v4}, Lcom/twitter/library/scribe/s;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    return-object v0

    .line 24
    :pswitch_0
    const/4 v0, 0x6

    .line 25
    goto :goto_0

    .line 28
    :pswitch_1
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 32
    :pswitch_2
    const/4 v0, 0x3

    .line 33
    goto :goto_0

    .line 36
    :pswitch_3
    const/4 v0, 0x4

    .line 37
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v5, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->b:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-ne v0, v5, :cond_3

    .line 46
    const/4 v2, 0x1

    move-object v0, p0

    .line 47
    check-cast v0, Lcom/twitter/model/moments/viewmodels/aa;

    iget-wide v0, v0, Lcom/twitter/model/moments/viewmodels/aa;->a:J

    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v5, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->d:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-ne v0, v5, :cond_4

    .line 49
    const/4 v0, 0x5

    move-wide v8, v2

    move v2, v0

    move-wide v0, v8

    goto :goto_1

    :cond_4
    move-wide v8, v2

    move v2, v1

    move-wide v0, v8

    .line 51
    goto :goto_1

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
