.class final Lcom/twitter/database/generated/gz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbfa;


# instance fields
.field private final a:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    .line 47
    return-void
.end method


# virtual methods
.method public a(J)Lbfa;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    return-object p0
.end method

.method public a(Lcom/twitter/model/livevideo/a;)Lbfa;
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "broadcast"

    sget-object v2, Lcom/twitter/model/livevideo/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 106
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbfa;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object p0
.end method

.method public a(Ljava/util/List;)Lbfa;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/card/property/ImageSpec;",
            ">;)",
            "Lbfa;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "placeholder_variants"

    sget-object v2, Lcom/twitter/database/generated/a;->f:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 131
    return-object p0
.end method

.method public b(J)Lbfa;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbfa;
    .locals 2

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "subtitle"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 92
    :goto_0
    return-object p0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "subtitle"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(J)Lbfa;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "start_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lbfa;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "hashtag"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object p0
.end method

.method public d(J)Lbfa;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "end_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lbfa;
    .locals 2

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "semantic_core_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-object p0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "semantic_core_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(J)Lbfa;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/database/generated/gz;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "updated_at"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    return-object p0
.end method
