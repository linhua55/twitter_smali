.class public abstract Lbss;
.super Lbky;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TPR:",
        "Lcom/twitter/library/service/c;",
        ">",
        "Lbky",
        "<TTPR;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lbky;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lbss;->j:Ljava/lang/String;

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lbky;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lbss;->j:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public final E()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lbss;->h:J

    return-wide v0
.end method

.method public final F()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lbss;->i:I

    return v0
.end method

.method public final G()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lbss;->c:J

    return-wide v0
.end method

.method public final H()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lbss;->a:I

    return v0
.end method

.method public final I()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lbss;->b:I

    return v0
.end method

.method public J()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lbss;->k:I

    return v0
.end method

.method public final b(J)Lbss;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbss;",
            ">(J)TT;"
        }
    .end annotation

    .prologue
    .line 129
    iput-wide p1, p0, Lbss;->h:J

    .line 130
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lbss;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbss;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 175
    iput-object p1, p0, Lbss;->j:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method protected final b()Lcom/twitter/library/service/e;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 87
    invoke-virtual {p0}, Lbss;->h()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 88
    iget v1, p0, Lbss;->i:I

    if-lez v1, :cond_0

    .line 89
    const-string/jumbo v1, "count"

    iget v2, p0, Lbss;->i:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 91
    :cond_0
    iget-wide v2, p0, Lbss;->h:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    iget-wide v2, p0, Lbss;->c:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 92
    const-string/jumbo v1, "since_id"

    iget-wide v2, p0, Lbss;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 94
    :cond_1
    iget-wide v2, p0, Lbss;->h:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 95
    const-string/jumbo v1, "max_id"

    iget-wide v2, p0, Lbss;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 97
    :cond_2
    iget-object v1, p0, Lbss;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    const-string/jumbo v1, "request_context"

    iget-object v2, p0, Lbss;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 106
    :cond_3
    invoke-virtual {p0}, Lbss;->J()I

    move-result v1

    .line 108
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 109
    const-string/jumbo v1, "autoplay_enabled"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 114
    :cond_4
    :goto_0
    const-string/jumbo v1, "include_entities"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->b()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->e()Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "include_media_features"

    .line 117
    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "include_user_entities"

    .line 118
    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->d()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->c()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 114
    return-object v0

    .line 110
    :cond_5
    if-ne v1, v4, :cond_4

    .line 111
    const-string/jumbo v1, "autoplay_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    goto :goto_0
.end method

.method public final c(I)Lbss;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbss;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 139
    iput p1, p0, Lbss;->i:I

    .line 140
    return-object p0
.end method

.method public final c(J)Lbss;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbss;",
            ">(J)TT;"
        }
    .end annotation

    .prologue
    .line 149
    iput-wide p1, p0, Lbss;->c:J

    .line 150
    return-object p0
.end method

.method public final d(I)Lbss;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbss;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 159
    iput p1, p0, Lbss;->a:I

    .line 160
    return-object p0
.end method

.method public final e(I)Lbss;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbss;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 169
    iput p1, p0, Lbss;->b:I

    .line 170
    return-object p0
.end method

.method public final f(I)Lbss;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbss;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 186
    iput p1, p0, Lbss;->k:I

    .line 187
    return-object p0
.end method

.method protected abstract h()Lcom/twitter/library/service/e;
.end method
