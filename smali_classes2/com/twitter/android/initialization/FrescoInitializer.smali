.class public Lcom/twitter/android/initialization/FrescoInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/FrescoInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/library/media/fresco/e;

    invoke-direct {v0}, Lcom/twitter/library/media/fresco/e;-><init>()V

    .line 42
    new-instance v1, Lcom/twitter/library/media/fresco/l;

    invoke-direct {v1, p1}, Lcom/twitter/library/media/fresco/l;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {p1}, Lev;->a(Landroid/content/Context;)Ley;

    move-result-object v2

    new-instance v3, Lcom/twitter/library/media/fresco/a;

    invoke-direct {v3, p1}, Lcom/twitter/library/media/fresco/a;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v2, v3}, Ley;->a(Lbm;)Ley;

    move-result-object v2

    new-instance v3, Lcom/twitter/library/media/fresco/d;

    invoke-direct {v3}, Lcom/twitter/library/media/fresco/d;-><init>()V

    .line 45
    invoke-virtual {v2, v3}, Ley;->b(Lbm;)Ley;

    move-result-object v2

    .line 46
    invoke-static {p1}, Lcom/twitter/library/media/fresco/b;->a(Landroid/content/Context;)Lcom/facebook/cache/disk/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Ley;->a(Lcom/facebook/cache/disk/h;)Ley;

    move-result-object v2

    .line 47
    invoke-static {}, Lcom/twitter/library/media/fresco/f;->a()Lcom/twitter/library/media/fresco/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Ley;->a(Lcom/facebook/common/memory/b;)Ley;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v0}, Ley;->a(Les;)Ley;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Ley;->a(Lcom/facebook/imagepipeline/producers/bj;)Ley;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ley;->a()Lev;

    move-result-object v0

    .line 51
    invoke-static {p1, v0}, Lch;->a(Landroid/content/Context;Lev;)V

    .line 53
    new-instance v0, Lcom/twitter/android/initialization/i;

    invoke-direct {v0, p0}, Lcom/twitter/android/initialization/i;-><init>(Lcom/twitter/android/initialization/FrescoInitializer;)V

    invoke-static {v0}, Lbjc;->a(Lbje;)V

    .line 59
    return-void
.end method
