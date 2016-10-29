.class public Lcom/twitter/android/moments/ui/fullscreen/hb;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/model/core/Tweet;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/ei;

.field private final c:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/hd;


# direct methods
.method constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/hd;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/hc;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/hc;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hb;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->c:Lcom/twitter/util/y;

    .line 30
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->b:Lcom/twitter/android/moments/ui/fullscreen/ei;

    .line 31
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->d:Lcom/twitter/android/moments/ui/fullscreen/hd;

    .line 32
    invoke-virtual {p2}, Lcom/twitter/android/moments/ui/fullscreen/ei;->a()Lcom/twitter/util/x;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->c:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 33
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hb;->a(Lcom/twitter/model/core/Tweet;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcav;)Lcom/twitter/android/moments/ui/fullscreen/hb;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/hb;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/hd;

    .line 42
    invoke-static {p0}, Lcom/twitter/android/moments/ui/animation/m;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/animation/m;

    move-result-object v2

    invoke-direct {v1, p1, p3, v2, p4}, Lcom/twitter/android/moments/ui/fullscreen/hd;-><init>(Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/animation/m;Lcav;)V

    invoke-direct {v0, p2, p3, v1}, Lcom/twitter/android/moments/ui/fullscreen/hb;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/android/moments/ui/fullscreen/hd;)V

    .line 40
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hb;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->a:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->d:Lcom/twitter/android/moments/ui/fullscreen/hd;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/hd;->a()V

    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->b:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/ei;->a()Lcom/twitter/util/x;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->c:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 54
    return-void
.end method

.method protected a(Lcom/twitter/model/core/Tweet;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->a:Lcom/twitter/model/core/Tweet;

    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hb;->d:Lcom/twitter/android/moments/ui/fullscreen/hd;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hd;->a(Lcom/twitter/model/core/Tweet;)V

    .line 49
    return-void
.end method
