.class public Lcom/twitter/android/livevideo/player/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/player/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final a:Landroid/view/accessibility/CaptioningManager;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lrx/o;",
            "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/e;->a:Landroid/view/accessibility/CaptioningManager;

    .line 27
    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/player/e;->b:Ljava/util/Map;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/livevideo/player/e;)Landroid/view/accessibility/CaptioningManager;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/e;->a:Landroid/view/accessibility/CaptioningManager;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/livevideo/player/e;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/e;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcom/twitter/android/livevideo/player/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/android/livevideo/player/f;

    invoke-direct {v0, p0}, Lcom/twitter/android/livevideo/player/f;-><init>(Lcom/twitter/android/livevideo/player/e;)V

    .line 34
    invoke-static {v0}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/twitter/android/livevideo/player/h;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/livevideo/player/h;-><init>(Lcom/twitter/android/livevideo/player/e;Lrx/o;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldje;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public b()Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/twitter/android/livevideo/player/i;

    invoke-direct {v0, p0}, Lcom/twitter/android/livevideo/player/i;-><init>(Lcom/twitter/android/livevideo/player/e;)V

    .line 69
    invoke-static {v0}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/twitter/android/livevideo/player/k;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/livevideo/player/k;-><init>(Lcom/twitter/android/livevideo/player/e;Lrx/o;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldje;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
