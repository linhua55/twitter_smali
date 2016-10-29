.class Lcom/twitter/model/dms/bj;
.super Lcom/twitter/model/dms/o;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/o",
        "<",
        "Lcom/twitter/model/dms/bh;",
        "Lcom/twitter/model/dms/bi;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/model/dms/o;-><init>(I)V

    .line 185
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/bi;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/twitter/model/dms/bi;

    invoke-direct {v0}, Lcom/twitter/model/dms/bi;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/bi;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/model/dms/o;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/p;I)V

    .line 197
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    .line 198
    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/bi;->b(I)Lcom/twitter/model/dms/bi;

    .line 199
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/bi;->c(I)Lcom/twitter/model/dms/bi;

    .line 200
    sget-object v0, Lcom/twitter/model/drafts/DraftAttachment;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/bi;->a(Lcom/twitter/model/drafts/DraftAttachment;)Lcom/twitter/model/dms/bi;

    .line 201
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/dms/bi;->c(Ljava/lang/String;)Lcom/twitter/model/dms/bi;

    .line 204
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    check-cast p2, Lcom/twitter/model/dms/bi;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/bj;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/bi;I)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    check-cast p2, Lcom/twitter/model/dms/bi;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/bj;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/bi;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/bh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Lcom/twitter/model/dms/o;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/n;)V

    .line 210
    iget v0, p2, Lcom/twitter/model/dms/bh;->j:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 211
    iget v0, p2, Lcom/twitter/model/dms/bh;->k:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 212
    iget-object v0, p2, Lcom/twitter/model/dms/bh;->l:Lcom/twitter/model/drafts/DraftAttachment;

    sget-object v1, Lcom/twitter/model/drafts/DraftAttachment;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 213
    iget-object v0, p2, Lcom/twitter/model/dms/bh;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 214
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    check-cast p2, Lcom/twitter/model/dms/bh;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/bj;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/bh;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    check-cast p2, Lcom/twitter/model/dms/bh;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/bj;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/bh;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/twitter/model/dms/bj;->a()Lcom/twitter/model/dms/bi;

    move-result-object v0

    return-object v0
.end method
