.class public Lcom/twitter/android/moments/ui/fullscreen/fg;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/android/moments/ui/fullscreen/fg;


# instance fields
.field private b:Lcom/twitter/android/moments/ui/fullscreen/fh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a()Lcom/twitter/android/moments/ui/fullscreen/fg;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/fg;->a:Lcom/twitter/android/moments/ui/fullscreen/fg;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/fg;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/fullscreen/fg;-><init>()V

    sput-object v0, Lcom/twitter/android/moments/ui/fullscreen/fg;->a:Lcom/twitter/android/moments/ui/fullscreen/fg;

    .line 29
    :cond_0
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/fg;->a:Lcom/twitter/android/moments/ui/fullscreen/fg;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/fh;

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/fh;-><init>(ZJ)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fg;->b:Lcom/twitter/android/moments/ui/fullscreen/fh;

    .line 37
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/fg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/fg;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fg;->b:Lcom/twitter/android/moments/ui/fullscreen/fh;

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/fg;->b:Lcom/twitter/android/moments/ui/fullscreen/fh;

    iget-wide v2, v2, Lcom/twitter/android/moments/ui/fullscreen/fh;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fg;->b:Lcom/twitter/android/moments/ui/fullscreen/fh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fg;->b:Lcom/twitter/android/moments/ui/fullscreen/fh;

    iget-boolean v0, v0, Lcom/twitter/android/moments/ui/fullscreen/fh;->a:Z

    goto :goto_0
.end method
