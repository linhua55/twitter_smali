.class public abstract Lcom/twitter/library/service/x;
.super Lcom/twitter/internal/android/service/AsyncOperation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Landroid/os/Bundle;",
        "Lcom/twitter/library/service/aa;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/client/bd;

.field private b:I

.field private c:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/twitter/library/service/ab;

.field public final o:Landroid/os/Bundle;

.field protected final p:Landroid/content/Context;

.field protected final q:Lcom/twitter/library/network/at;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, p2}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v2, "Proxying app visibility from request."

    iput-object v2, p0, Lcom/twitter/library/service/x;->g:Ljava/lang/String;

    .line 85
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/library/service/x;->p:Landroid/content/Context;

    .line 87
    invoke-static {p1}, Lcom/twitter/library/network/at;->a(Landroid/content/Context;)Lcom/twitter/library/network/at;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/library/service/x;->q:Lcom/twitter/library/network/at;

    .line 88
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/library/service/x;->a:Lcom/twitter/library/client/bd;

    .line 89
    new-instance v2, Lcom/twitter/library/service/k;

    invoke-direct {v2}, Lcom/twitter/library/service/k;-><init>()V

    new-instance v3, Lcom/twitter/library/service/q;

    invoke-direct {v3, v0}, Lcom/twitter/library/service/q;-><init>(I)V

    .line 90
    invoke-virtual {v2, v3}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    move-result-object v2

    new-instance v3, Lcom/twitter/library/service/l;

    invoke-direct {v3, p1}, Lcom/twitter/library/service/l;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v2, v3}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    move-result-object v2

    .line 89
    invoke-virtual {p0, v2}, Lcom/twitter/library/service/x;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 92
    invoke-virtual {p0, v0}, Lcom/twitter/library/service/x;->b(I)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 93
    const-string/jumbo v2, "set_polling_header_using_visibility_enabled"

    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/util/f;->c()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/library/service/x;->c:Z

    .line 101
    :goto_1
    instance-of v0, p0, Lcom/twitter/library/resilient/b;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/twitter/library/service/x;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/resilient/a;->a(Landroid/content/Context;)Lcom/twitter/library/resilient/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/service/x;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 104
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_2
    iput-boolean v1, p0, Lcom/twitter/library/service/x;->c:Z

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/service/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    if-eqz p3, :cond_0

    .line 120
    new-instance v0, Lcom/twitter/library/service/ab;

    invoke-direct {v0, p3}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    iput-object v0, p0, Lcom/twitter/library/service/x;->h:Lcom/twitter/library/service/ab;

    .line 122
    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/service/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    iput-object p3, p0, Lcom/twitter/library/service/x;->h:Lcom/twitter/library/service/ab;

    .line 141
    return-void
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 417
    invoke-static {p0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    return-void
.end method


# virtual methods
.method public final M()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/twitter/library/service/x;->b:I

    return v0
.end method

.method public final N()Lcom/twitter/library/service/ab;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/twitter/library/service/x;->h:Lcom/twitter/library/service/ab;

    return-object v0
.end method

.method public final O()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/twitter/library/service/x;->c:Z

    return v0
.end method

.method public P()Lcom/twitter/library/service/aa;
    .locals 2

    .prologue
    .line 444
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/service/y;

    invoke-direct {v1, p0}, Lcom/twitter/library/service/y;-><init>(Lcom/twitter/library/service/x;)V

    invoke-virtual {v0, v1}, Lbiu;->a(Lcom/twitter/util/concurrent/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 457
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    return-object v0
.end method

.method protected Q()Lcom/twitter/library/service/aa;
    .locals 2

    .prologue
    .line 474
    new-instance v0, Lcom/twitter/library/service/aa;

    invoke-direct {v0}, Lcom/twitter/library/service/aa;-><init>()V

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 476
    return-object v0
.end method

.method protected final R()Lcom/twitter/library/service/aa;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_0

    .line 483
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v1

    const-string/jumbo v2, "request_user_id"

    iget-wide v4, v0, Lcom/twitter/library/service/ab;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_0
    new-instance v0, Lcom/twitter/library/service/aa;

    invoke-direct {v0}, Lcom/twitter/library/service/aa;-><init>()V

    .line 487
    invoke-virtual {p0, v0}, Lcom/twitter/library/service/x;->b(Lcom/twitter/library/service/aa;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-virtual {p0, v0}, Lcom/twitter/library/service/x;->a_(Lcom/twitter/library/service/aa;)V

    .line 490
    :cond_1
    return-object v0
.end method

.method public final S()Lcom/twitter/library/provider/dm;
    .locals 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/twitter/library/service/x;->h:Lcom/twitter/library/service/ab;

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Session is null when accessing DB. Did you forget to pass in a Session to the constructor?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/service/x;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/library/service/x;->h:Lcom/twitter/library/service/ab;

    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    return-object v0
.end method

.method protected final T()Lcom/twitter/library/provider/b;
    .locals 2

    .prologue
    .line 510
    new-instance v0, Lcom/twitter/library/provider/b;

    iget-object v1, p0, Lcom/twitter/library/service/x;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public U()Z
    .locals 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 537
    :goto_0
    return v0

    .line 538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/twitter/library/network/j;
    .locals 2

    .prologue
    .line 349
    new-instance v0, Lcom/twitter/library/network/j;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/network/j;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {p0}, Lcom/twitter/library/service/x;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/twitter/library/service/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->a(Ljava/lang/String;)Lcom/twitter/library/network/j;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/twitter/library/service/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/network/j;->b(Ljava/lang/String;)Lcom/twitter/library/network/j;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/twitter/library/service/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 322
    return-object p0
.end method

.method public final a(Lcom/twitter/library/service/x;)Lcom/twitter/library/service/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Lcom/twitter/library/service/x;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p1, Lcom/twitter/library/service/x;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/library/service/x;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    .line 436
    :goto_0
    return-object p0

    .line 434
    :cond_0
    iget-object v0, p1, Lcom/twitter/library/service/x;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/library/service/x;->l(Ljava/lang/String;)Lcom/twitter/library/service/x;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Lcom/twitter/library/service/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/twitter/library/service/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 210
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/twitter/library/service/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    return-object p0
.end method

.method public final a(Ljava/lang/String;[I)Lcom/twitter/library/service/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Ljava/lang/String;",
            "[I)TT;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 246
    return-object p0
.end method

.method protected abstract a_(Lcom/twitter/library/service/aa;)V
.end method

.method public final b(Ljava/lang/String;J)Lcom/twitter/library/service/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 180
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/twitter/library/service/x;->o:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object p0
.end method

.method protected final b(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/twitter/library/service/x;->a:Lcom/twitter/library/client/bd;

    invoke-virtual {v0, p1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 467
    return-void
.end method

.method protected b(Lcom/twitter/library/service/aa;)Z
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/twitter/library/service/x;->Q()Lcom/twitter/library/service/aa;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/twitter/library/service/x;->R()Lcom/twitter/library/service/aa;

    move-result-object v0

    return-object v0
.end method

.method public final h(I)Lcom/twitter/library/service/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 149
    iput p1, p0, Lcom/twitter/library/service/x;->b:I

    .line 150
    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/twitter/library/service/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string/jumbo v0, "Cannot force polling without a reason"

    invoke-static {p1, v0}, Lcom/twitter/library/service/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    iput-object p1, p0, Lcom/twitter/library/service/x;->g:Ljava/lang/String;

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/service/x;->c:Z

    .line 382
    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lcom/twitter/library/service/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/library/service/x;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-string/jumbo v0, "Cannot force non-polling without a reason"

    invoke-static {p1, v0}, Lcom/twitter/library/service/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    iput-object p1, p0, Lcom/twitter/library/service/x;->g:Ljava/lang/String;

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/service/x;->c:Z

    .line 410
    return-object p0
.end method
