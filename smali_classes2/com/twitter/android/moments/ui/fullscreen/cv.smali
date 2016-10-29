.class public Lcom/twitter/android/moments/ui/fullscreen/cv;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/fullscreen/fp;

.field private final b:Lrx/t;

.field private c:Lcom/twitter/android/moments/ui/fullscreen/fr;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/fp;Lrx/t;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/cv;->a:Lcom/twitter/android/moments/ui/fullscreen/fp;

    .line 30
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/cv;->b:Lrx/t;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/fp;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cv;->a:Lcom/twitter/android/moments/ui/fullscreen/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/cv;Lcom/twitter/android/moments/ui/fullscreen/fr;)Lcom/twitter/android/moments/ui/fullscreen/fr;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/cv;->c:Lcom/twitter/android/moments/ui/fullscreen/fr;

    return-object p1
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/fr;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cv;->c:Lcom/twitter/android/moments/ui/fullscreen/fr;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cv;->c:Lcom/twitter/android/moments/ui/fullscreen/fr;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/cv;->b:Lrx/t;

    .line 49
    invoke-virtual {v0, v1}, Lrx/w;->b(Lrx/t;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/cx;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/cx;-><init>(Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 50
    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjf;)Lrx/ap;

    .line 57
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 2

    .prologue
    .line 35
    invoke-static {p2}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/cv;->b:Lrx/t;

    .line 36
    invoke-virtual {v0, v1}, Lrx/w;->b(Lrx/t;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/cw;

    invoke-direct {v1, p0, p1, p3}, Lcom/twitter/android/moments/ui/fullscreen/cw;-><init>(Lcom/twitter/android/moments/ui/fullscreen/cv;Landroid/view/ViewGroup;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 37
    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjf;)Lrx/ap;

    .line 44
    return-void
.end method
