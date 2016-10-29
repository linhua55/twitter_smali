.class public abstract Lbrm;
.super Lcom/twitter/library/api/af;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/af",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcom/twitter/model/core/cs;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final b:J

.field private final c:Z

.field private final g:Ljava/lang/String;

.field private final h:Lcom/twitter/library/provider/dm;

.field private final i:Lcom/twitter/library/api/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/cs;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation
.end field

.field private j:[I

.field private k:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;JZLcom/twitter/library/provider/dm;Lcom/twitter/library/api/t;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/service/ab;",
            "JZ",
            "Lcom/twitter/library/provider/dm;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/cs;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lbrp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/af;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 36
    sget-object v0, Lcom/twitter/model/core/cj;->b:[I

    iput-object v0, p0, Lbrm;->j:[I

    .line 46
    iput-object p6, p0, Lbrm;->h:Lcom/twitter/library/provider/dm;

    .line 47
    iput-object p7, p0, Lbrm;->i:Lcom/twitter/library/api/t;

    .line 48
    iput-boolean p5, p0, Lbrm;->c:Z

    .line 49
    iput-wide p3, p0, Lbrm;->b:J

    .line 51
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "request_favorite_%d_%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lbrm;->N()Lcom/twitter/library/service/ab;

    move-result-object v4

    iget-wide v4, v4, Lcom/twitter/library/service/ab;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrm;->g:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic a(Lbrm;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lbrm;->k:I

    return p1
.end method

.method static synthetic a(Lbrm;)Lcom/twitter/library/provider/b;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lbrm;->T()Lcom/twitter/library/provider/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lbrm;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lbrm;->b:J

    return-wide v0
.end method

.method static synthetic c(Lbrm;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lbrm;->c:Z

    return v0
.end method

.method static synthetic d(Lbrm;)Lcom/twitter/library/provider/dm;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lbrm;->h:Lcom/twitter/library/provider/dm;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/internal/android/service/ab;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 81
    invoke-super {p0, p1}, Lcom/twitter/library/api/af;->a(Lcom/twitter/internal/android/service/ab;)V

    .line 83
    invoke-virtual {p0}, Lbrm;->U()Z

    move-result v0

    .line 84
    invoke-virtual {p0}, Lbrm;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    .line 85
    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lbrm;->i:Lcom/twitter/library/api/t;

    invoke-virtual {v0}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/twitter/model/core/cs;

    .line 87
    if-eqz v1, :cond_1

    .line 89
    iget-boolean v0, p0, Lbrm;->c:Z

    iput-boolean v0, v1, Lcom/twitter/model/core/cs;->F:Z

    .line 92
    iget v0, v1, Lcom/twitter/model/core/cs;->G:I

    iget v4, p0, Lbrm;->k:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/twitter/model/core/cs;->G:I

    .line 93
    iget v0, v1, Lcom/twitter/model/core/cs;->G:I

    iput v0, p0, Lbrm;->k:I

    .line 95
    invoke-virtual {p0}, Lbrm;->T()Lcom/twitter/library/provider/b;

    move-result-object v12

    .line 96
    iget-boolean v0, p0, Lbrm;->c:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    .line 99
    :goto_0
    iget-object v0, p0, Lbrm;->h:Lcom/twitter/library/provider/dm;

    .line 100
    invoke-static {v1}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v9, v7

    move v11, v7

    move v13, v7

    .line 99
    invoke-virtual/range {v0 .. v13}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;JIJZZZLjava/lang/String;ZLcom/twitter/library/provider/b;Z)Ljava/util/Collection;

    .line 105
    invoke-virtual {v12}, Lcom/twitter/library/provider/b;->a()V

    .line 113
    :goto_1
    return-void

    .line 96
    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Lcom/twitter/library/util/InvalidDataException;

    const-string/jumbo v1, "Received null status."

    invoke-direct {v0, v1}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lbrm;->i:Lcom/twitter/library/api/t;

    invoke-virtual {v0}, Lcom/twitter/library/api/t;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cj;

    invoke-static {v0}, Lcom/twitter/model/core/cj;->a(Lcom/twitter/model/core/cj;)[I

    move-result-object v0

    iput-object v0, p0, Lbrm;->j:[I

    goto :goto_1
.end method

.method protected b()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/cs;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lbrm;->i:Lcom/twitter/library/api/t;

    return-object v0
.end method

.method public c(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/service/AsyncOperation;->cancel(Z)Z

    .line 68
    :cond_0
    new-instance v0, Lbrn;

    invoke-direct {v0, p0}, Lbrn;-><init>(Lbrm;)V

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lbrm;->b()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lbrm;->b:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lbrm;->k:I

    return v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lbrm;->g:Ljava/lang/String;

    return-object v0
.end method

.method public s()[I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lbrm;->j:[I

    return-object v0
.end method
