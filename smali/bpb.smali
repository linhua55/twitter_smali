.class public Lbpb;
.super Lcom/twitter/library/api/af;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/af",
        "<",
        "Lbpe;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/twitter/library/service/ab;

    invoke-direct {v0, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    invoke-direct {p0, p1, v0}, Lbpb;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lbpb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/af;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbpb;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lbpb;->b:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public a(Z)Lbpb;
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lbpb;->c:Z

    .line 64
    return-object p0
.end method

.method a(Lbpe;)Lbpg;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p1}, Lbpe;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpg;

    return-object v0
.end method

.method protected a()Lcom/twitter/library/service/d;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-virtual {p0}, Lbpb;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "storystream"

    aput-object v3, v1, v2

    const-string/jumbo v2, "stories"

    aput-object v2, v1, v4

    .line 71
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "schemaVersion"

    const-string/jumbo v2, "v2"

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lbpb;->g()Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/twitter/library/provider/dm;->l()Ljava/util/Set;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    const-string/jumbo v2, "seenStoryIds"

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/twitter/library/service/e;

    .line 80
    :goto_0
    iget-object v1, p0, Lbpb;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string/jumbo v1, "storyId"

    iget-object v2, p0, Lbpb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 83
    :cond_0
    iget-boolean v1, p0, Lbpb;->c:Z

    if-eqz v1, :cond_1

    .line 84
    const-string/jumbo v1, "sampleStories"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 86
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->e()Lcom/twitter/library/service/e;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/twitter/library/service/e;->c()Lcom/twitter/library/service/e;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/twitter/library/service/e;->d()Lcom/twitter/library/service/e;

    .line 89
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0

    .line 78
    :cond_2
    const-string/jumbo v1, "includeHistory"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    goto :goto_0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbpe;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {p0, p3}, Lbpb;->a(Lbpe;)Lbpg;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    const-string/jumbo v1, "StoriesRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lbpg;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " stories from endpoint"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lbpb;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_3

    .line 110
    invoke-virtual {p0}, Lbpb;->g()Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 111
    iget v3, v0, Lbpg;->b:I

    if-lez v3, :cond_2

    iget v5, v0, Lbpg;->b:I

    .line 113
    :goto_0
    iget-wide v2, v2, Lcom/twitter/library/service/ab;->c:J

    iget-object v4, v0, Lbpg;->a:Ljava/util/List;

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/dm;->a(JLjava/util/List;ILcom/twitter/library/provider/b;)I

    move-result v0

    .line 117
    iget-object v2, p0, Lbpb;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lbpb;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/twitter/library/provider/dm;->d(Ljava/lang/String;Lcom/twitter/library/provider/b;)V

    .line 123
    :cond_0
    :goto_1
    iget-object v1, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "key_stories_changed"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string/jumbo v1, "StoriesRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inserted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " stories"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    :goto_2
    return-void

    .line 111
    :cond_2
    const/16 v5, 0xe

    goto :goto_0

    .line 121
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 125
    :cond_4
    invoke-static {}, Lcjw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string/jumbo v0, "StoriesRequest"

    const-string/jumbo v1, "Stories could not be parsed!"

    invoke-static {v0, v1}, Lcjw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :cond_5
    invoke-static {}, Lcjw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string/jumbo v0, "StoriesRequest"

    const-string/jumbo v1, "Story request unsuccessful"

    invoke-static {v0, v1}, Lcjw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 24
    check-cast p3, Lbpe;

    invoke-virtual {p0, p1, p2, p3}, Lbpb;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbpe;)V

    return-void
.end method

.method protected b()Lbpe;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lbpe;

    invoke-direct {v0}, Lbpe;-><init>()V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "app:twitter_event:highlights:stories_request"

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lbpb;->b()Lbpe;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/twitter/library/provider/dm;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lbpb;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    return-object v0
.end method
