.class public Lckw;
.super Lckn;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckn",
        "<",
        "Lcle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lckm;Lcle;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lckn;-><init>(Lckm;Lcks;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget-object v0, v0, Lcle;->j:Lckj;

    iget-object v0, v0, Lckj;->a:Ljava/util/List;

    .line 28
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempted to access tweet targets when type was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->i:I

    .line 27
    invoke-static {v0}, Lckp;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 28
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lckw;)Z
    .locals 2

    .prologue
    .line 133
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget-object v1, p1, Lckw;->b:Lcks;

    check-cast v1, Lcle;

    invoke-virtual {v0, v1}, Lcle;->a(Lcle;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget-object v0, v0, Lcle;->m:Lckj;

    iget-object v0, v0, Lckj;->a:Ljava/util/List;

    .line 50
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempted to access tweet target objects when type was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->l:I

    .line 49
    invoke-static {v0}, Lckp;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 50
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lckg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget-object v0, v0, Lcle;->m:Lckj;

    iget-object v0, v0, Lckj;->a:Ljava/util/List;

    .line 61
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempted to access list target objects when type was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->l:I

    .line 60
    invoke-static {v0}, Lckp;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 61
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->d:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->h:I

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->k:I

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->d:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :pswitch_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 110
    :pswitch_1
    invoke-virtual {p0}, Lckw;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lckw;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 129
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lckw;

    if-eqz v0, :cond_1

    check-cast p1, Lckw;

    invoke-virtual {p0, p1}, Lckw;->a(Lckw;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    invoke-virtual {v0}, Lcle;->hashCode()I

    move-result v0

    return v0
.end method
