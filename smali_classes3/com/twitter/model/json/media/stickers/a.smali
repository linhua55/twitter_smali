.class final Lcom/twitter/model/json/media/stickers/a;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcpy;)Lcpy;
    .locals 13

    .prologue
    .line 31
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpy;

    .line 32
    new-instance v1, Lcpy;

    iget-wide v2, v0, Lcpy;->a:J

    iget-wide v4, v0, Lcpy;->b:J

    iget-object v6, v0, Lcpy;->f:Ljava/util/List;

    iget-object v7, v0, Lcpy;->e:Ljava/lang/String;

    iget-object v8, v0, Lcpy;->d:Lcpk;

    const/4 v9, 0x2

    iget-boolean v10, v0, Lcpy;->g:Z

    iget-object v11, v0, Lcpy;->h:Ljava/lang/String;

    iget-object v12, v0, Lcpy;->i:Lcqb;

    invoke-direct/range {v1 .. v12}, Lcpy;-><init>(JJLjava/util/List;Ljava/lang/String;Lcpk;IZLjava/lang/String;Lcqb;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcpy;

    invoke-virtual {p0, p1}, Lcom/twitter/model/json/media/stickers/a;->a(Lcpy;)Lcpy;

    move-result-object v0

    return-object v0
.end method
