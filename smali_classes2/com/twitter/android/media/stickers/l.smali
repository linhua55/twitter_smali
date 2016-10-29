.class final Lcom/twitter/android/media/stickers/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcpy;",
        "Lcpy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldau;


# direct methods
.method constructor <init>(JLdau;)V
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/twitter/android/media/stickers/l;->a:J

    iput-object p3, p0, Lcom/twitter/android/media/stickers/l;->b:Ldau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcpy;)Lcpy;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpy;

    .line 72
    iget-object v2, v0, Lcpy;->i:Lcqb;

    iget-wide v4, p0, Lcom/twitter/android/media/stickers/l;->a:J

    invoke-virtual {v2, v4, v5}, Lcqb;->a(J)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget-object v2, v0, Lcpy;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/twitter/android/media/stickers/l;->b:Ldau;

    invoke-static {v2, v3}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;Ldau;)Ljava/util/List;

    move-result-object v6

    .line 76
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcpy;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 83
    new-instance v1, Lcpy;

    iget-wide v2, v0, Lcpy;->a:J

    iget-wide v4, v0, Lcpy;->b:J

    iget-object v7, v0, Lcpy;->e:Ljava/lang/String;

    iget-object v8, v0, Lcpy;->d:Lcpk;

    iget v9, v0, Lcpy;->c:I

    iget-boolean v10, v0, Lcpy;->g:Z

    iget-object v11, v0, Lcpy;->h:Ljava/lang/String;

    iget-object v12, v0, Lcpy;->i:Lcqb;

    invoke-direct/range {v1 .. v12}, Lcpy;-><init>(JJLjava/util/List;Ljava/lang/String;Lcpk;IZLjava/lang/String;Lcqb;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcpy;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/l;->a(Lcpy;)Lcpy;

    move-result-object v0

    return-object v0
.end method
