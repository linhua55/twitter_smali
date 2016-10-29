.class public Lcom/twitter/library/client/d;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field g:Z

.field h:I

.field i:Z

.field j:I

.field k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/client/d;->i:Z

    .line 523
    const/16 v0, 0xe

    iput v0, p0, Lcom/twitter/library/client/d;->j:I

    .line 528
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/library/client/d;)V
    .locals 1

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/client/d;->i:Z

    .line 523
    const/16 v0, 0xe

    iput v0, p0, Lcom/twitter/library/client/d;->j:I

    .line 531
    iget-boolean v0, p1, Lcom/twitter/library/client/d;->g:Z

    iput-boolean v0, p0, Lcom/twitter/library/client/d;->g:Z

    .line 532
    iget v0, p1, Lcom/twitter/library/client/d;->h:I

    iput v0, p0, Lcom/twitter/library/client/d;->h:I

    .line 533
    iget-boolean v0, p1, Lcom/twitter/library/client/d;->i:Z

    iput-boolean v0, p0, Lcom/twitter/library/client/d;->i:Z

    .line 534
    iget v0, p1, Lcom/twitter/library/client/d;->j:I

    iput v0, p0, Lcom/twitter/library/client/d;->j:I

    .line 535
    iget-boolean v0, p1, Lcom/twitter/library/client/d;->k:Z

    iput-boolean v0, p0, Lcom/twitter/library/client/d;->k:Z

    .line 536
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/twitter/library/client/d;->i:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/twitter/library/client/d;->j:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/twitter/library/client/d;->c()V

    .line 578
    iput p1, p0, Lcom/twitter/library/client/d;->j:I

    .line 579
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/twitter/library/client/d;->g:Z

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Options are already configured!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/twitter/library/client/d;->b()I

    move-result v0

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/d;->b(I)V

    .line 601
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/twitter/library/client/d;->c()V

    .line 554
    iput-boolean p1, p0, Lcom/twitter/library/client/d;->i:Z

    .line 555
    return-void
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/twitter/library/client/d;->c()V

    .line 619
    iput p1, p0, Lcom/twitter/library/client/d;->h:I

    .line 620
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/twitter/library/client/d;->c()V

    .line 638
    iput-boolean p1, p0, Lcom/twitter/library/client/d;->k:Z

    .line 639
    return-void
.end method
