.class public final Lbi;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lbj;

.field private c:Lbj;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lbj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbj;-><init>(Lbh;)V

    iput-object v0, p0, Lbi;->b:Lbj;

    .line 199
    iget-object v0, p0, Lbi;->b:Lbj;

    iput-object v0, p0, Lbi;->c:Lbj;

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbi;->d:Z

    .line 206
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lbi;->a:Ljava/lang/String;

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lbh;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lbi;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()Lbj;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Lbj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbj;-><init>(Lbh;)V

    .line 406
    iget-object v1, p0, Lbi;->c:Lbj;

    iput-object v0, v1, Lbj;->c:Lbj;

    iput-object v0, p0, Lbi;->c:Lbj;

    .line 407
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lbi;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 417
    invoke-direct {p0}, Lbi;->a()Lbj;

    move-result-object v1

    .line 418
    iput-object p2, v1, Lbj;->b:Ljava/lang/Object;

    .line 419
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lbj;->a:Ljava/lang/String;

    .line 420
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lbi;
    .locals 1

    .prologue
    .line 278
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbi;->b(Ljava/lang/String;Ljava/lang/Object;)Lbi;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lbi;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lbi;->b(Ljava/lang/String;Ljava/lang/Object;)Lbi;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lbi;
    .locals 1

    .prologue
    .line 238
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbi;->b(Ljava/lang/String;Ljava/lang/Object;)Lbi;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 385
    iget-boolean v2, p0, Lbi;->d:Z

    .line 386
    const-string/jumbo v1, ""

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lbi;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 389
    iget-object v0, p0, Lbi;->b:Lbj;

    iget-object v0, v0, Lbj;->c:Lbj;

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_3

    .line 391
    if-eqz v2, :cond_0

    iget-object v4, v1, Lbj;->b:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 392
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string/jumbo v0, ", "

    .line 395
    iget-object v4, v1, Lbj;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 396
    iget-object v4, v1, Lbj;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    :cond_1
    iget-object v4, v1, Lbj;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    :cond_2
    iget-object v1, v1, Lbj;->c:Lbj;

    goto :goto_0

    .line 401
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
