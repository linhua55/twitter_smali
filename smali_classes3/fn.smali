.class public Lfn;
.super Lfl;
.source "Twttr"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile b:Landroid/graphics/Bitmap;

.field private final c:Lfr;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/d;Lfr;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/common/references/d",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lfr;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lfl;-><init>()V

    .line 49
    invoke-static {p1}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lfn;->b:Landroid/graphics/Bitmap;

    .line 50
    iget-object v1, p0, Lfn;->b:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/d;

    invoke-static {v1, v0}, Lcom/facebook/common/references/a;->a(Ljava/lang/Object;Lcom/facebook/common/references/d;)Lcom/facebook/common/references/a;

    move-result-object v0

    iput-object v0, p0, Lfn;->a:Lcom/facebook/common/references/a;

    .line 53
    iput-object p3, p0, Lfn;->c:Lfr;

    .line 54
    iput p4, p0, Lfn;->d:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/a;Lfr;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lfr;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lfl;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->c()Lcom/facebook/common/references/a;

    move-result-object v0

    invoke-static {v0}, Lbk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    iput-object v0, p0, Lfn;->a:Lcom/facebook/common/references/a;

    .line 68
    iget-object v0, p0, Lfn;->a:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lfn;->b:Landroid/graphics/Bitmap;

    .line 69
    iput-object p2, p0, Lfn;->c:Lfr;

    .line 70
    iput p3, p0, Lfn;->d:I

    .line 71
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lfn;->b:Landroid/graphics/Bitmap;

    .line 122
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lfn;->b:Landroid/graphics/Bitmap;

    .line 131
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfn;->a:Lcom/facebook/common/references/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lfn;->a:Lcom/facebook/common/references/a;

    if-nez v0, :cond_0

    .line 81
    monitor-exit p0

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lfn;->a:Lcom/facebook/common/references/a;

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lfn;->a:Lcom/facebook/common/references/a;

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lfn;->b:Landroid/graphics/Bitmap;

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lfn;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lfu;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lfn;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g()Lfr;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lfn;->c:Lfr;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lfn;->d:I

    return v0
.end method
